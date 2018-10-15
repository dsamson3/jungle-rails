require 'rails_helper'

RSpec.describe Product, type: :model do
 category = Category.new(name:"Anything")
 
  subject {
    described_class.new(name:"Anything", price:12, quantity:5, category: category)
  }
  describe "Validations" do
  it "is valid with all attributes present" do
    expect(subject).to be_valid
    expect(subject.errors.empty?).to be true
    puts subject.errors.full_messages
  end
  it "is not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
    expect(subject.errors.empty?).to_not be true
    puts subject.errors.full_messages
  end
  it "is not valid without a price" do
    @product = Product.new(name:"Anything", price:nil, quantity:5, category: category)
    expect(@product).to_not be_valid
    expect(@product.errors.empty?).to_not be true
    puts @product.errors.full_messages
  end
  it "is not valid without a quantity" do
    subject.quantity=nil
    expect(subject).to_not be_valid
    expect(subject.errors.empty?).to_not be true
    puts subject.errors.full_messages
  end
  it "is not valid without a category" do
    subject.category=nil
    expect(subject).to_not be_valid
    expect(subject.errors.empty?).to_not be true
    puts subject.errors.full_messages
  end
end
end
