require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    # @user = User.create!(email: "example@example.com", password: "123456")
    @user = FactoryGirl.create(:user)
    @user_one = FactoryGirl.create(:user)
    # @user_one = User.create!(email: "newexample@example.com", password: "654321")
  end

describe "GET #show" do
  context "User is logged in"   
    before do
      sign_in @user
    end

    it "loads correct user details"   do
      get :show, id: @user.id
      expect(assigns(:user)).to eq @user
    end
  end

  context "No user is logged in" do
    it "redirects to login" do
      get :show, id: @user.id
      expect(response).to redirect_to(new_user_session_path)
    end
  end
    
  context "User is logged in" do
    before do
      sign_in @user_one
    end
  
    context "Wrong user" do
      it "redirects to login" do
        get :show, id: @user.id 
        expect(assigns(:user)).not_to eq @user_one
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
