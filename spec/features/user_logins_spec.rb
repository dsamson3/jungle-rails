require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  
before :each do
  User.create!(
    name:"Appolonius",
    email:"test@test.com",
    password:"asd123",
    password_confirmation:"asd123"
  )
end

scenario "User logs in and is redirected to root page" do
  visit root_path
  click_on "Login"

  fill_in "email", with: "test@test.com"
  fill_in "password", with: "asd123"
  click_on "Submit"

  #save_screenshot
  within(".navbar"){expect(page).to have_content "Signed in as Appolonius"}
end


end
