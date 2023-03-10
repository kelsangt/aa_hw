require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", "John") }
  subject(:dessert) { Dessert.new("cupcake", 30, "John") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cupcake")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(30)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {dessert.quantity("hello")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient(ingredient)).to eq([ingredient])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to eq(dessert.ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(dessert.quantity - amount)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(amount > quantity)}.to raise_error(ArgumentError) 
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(chef.title).to eq("John")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(dessert.make_more).to eq(chef.bake(dessert))
    end
  end
end
