require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it do
    should validate_length_of(:password).
      is_at_least(6).
      on(:create)
  end
  it 'validates password' do 
    expect(self.is_password?(password)).to eq(true)
  end
  it 'resets session token' do 
    expect(self.reset_session_token!).to_not eq(session[:session_token])
  end
  it 'finds user by credentials' do 
    expect(User.find_by_credentials(email, password)).to eq(self)
  end
end
