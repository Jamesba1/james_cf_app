# require 'rails_helper'
# describe UsersController, :type => :controller do
# 
	# before do
	# @user = User.create!(email: "example@example.com", password: "123456")
	# @user_one = User.create! (email: "newexample@example.com", password: "654321")
# 
	# end
# 
	# describe "GET #show" do
	# context "User is logged in"
	# before do
		# sign_in @user
		# it "loads correct user details"	do
			# expect(assigns(:@user)).to eq @user

	
	# end
# end
# end

	# context "Wrong user" do
	# it "redirects to login" do
	# get :show, id: @user_one.id  

	# expect(assigns(:@user_one)).not to eql @user
	# expect(response.response_code).to eq 401
	# expect(response).to redirect_to(root_path)
	# end
# end

	# context "No user is logged in" do
	# it "redirects to login" do
    # get :show, id: @user.id
    # expect(response).to redirect_to(root_path)
	# end
# end
# end