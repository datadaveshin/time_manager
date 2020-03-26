require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do
    before do
      @user = User.create(email: "test@example.com", password:"asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Doe")
    end
    it "can be created" do
      expect(@user).to be_valid
    end
    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      expect(@user.first_name).to be_falsey
    end
    it "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user.last_name).to be_falsey
    end
  end
  after(:all) { User.destroy_all }
end
