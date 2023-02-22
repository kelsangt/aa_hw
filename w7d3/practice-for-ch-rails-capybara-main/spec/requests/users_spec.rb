require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /users/new (#new)" do
    it "renders the new template" do
      get new_user_url
      expect(response.body).to include("Sign Up!")
    end
  end

  describe "POST /users (#create)" do
    context "with invalid params" do
      it "validates the presence of the user's email" do
        post users_url
        expect(response.body).to include(".com")
      end

      it "validates that the password is at least 6 characters long" do
        
      end
    end

    context "with valid params" do
      it "redirects user to root page on success" do
        redirect_to users_url
      end
    end
  end
end
