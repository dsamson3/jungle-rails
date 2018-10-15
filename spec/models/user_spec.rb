require 'rails_helper'

RSpec.describe User, type: :model do
subject {described_class.new(name:"anything", email:"test@test.com", password:"asddsa", password_confirmation:"asddsa")}

  describe "Validations" do
    it "is valid with all attributes present" do
      expect(subject).to be_valid
    end
    it "is invalid when password and password confirmation do not match" do
      subject.password_confirmation = "dsadsa"
      expect(subject).to_not be_valid
    end
    it "is invalid when password is not present" do
      subject.password=nil
      expect(subject).to_not be_valid
    end
    it "is invalid when password_confirmation is not present" do
      subject.password_confirmation=nil
      expect(subject).to_not be_valid
    end
    it "is invalid when email is not present" do
      subject.email=nil
      expect(subject).to_not be_valid
    end
    it "is invalid when name is not present" do
      subject.name=nil
      expect(subject).to_not be_valid
    end
    it "is invalid if email is not unique" do
      @user_in_db = User.create(name:"anything", email:"TEST@test.com", password:"asddsa", password_confirmation:"asddsa")
      expect(subject).to_not be_valid
    end
    it "is invalid when password is less than 6 characters" do 
      subject.password="asd"
      expect(subject).to_not be_valid
    end
  end
  describe ".authenticate_with_credentials" do
    it "should return user when credentials match" do
    user = User.create(name:"anything", email:"TEST@test.com", password:"asddsa", password_confirmation:"asddsa")
    authenticate = User.authenticate_with_credentials('TEST@test.com', "asddsa")
    expect(authenticate).to eq(user)
    end
    it "should be nil in email credential doesnt authenticate" do
      user = User.create(name:"anything", email:"TEST@test.com", password:"asddsa", password_confirmation:"asddsa")
      authenticate = User.authenticate_with_credentials('teST2@test.com', "asddsa")
      expect(authenticate).to be nil
    end
    it "should return user if email different case" do
      user = User.create(name:"anything", email:"TEST@test.com", password:"asddsa", password_confirmation:"asddsa")
      authenticate = User.authenticate_with_credentials('TesT@test.com', "asddsa")
      expect(authenticate).to eq(user)
    end
    it "should return user  if email has whitespace" do
      user = User.create(name:"anything", email:"TEST@test.com", password:"asddsa", password_confirmation:"asddsa")
      authenticate = User.authenticate_with_credentials('  TEST@test.com', "asddsa")
      expect(authenticate).to eq(user)
    end
  end
end
