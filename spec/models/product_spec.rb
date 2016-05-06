require 'rails_helper'

describe Product do	
		before do
			@product = Product.create!(name: "race bike", description: "A bike", image_url: "bike.com", colour: "blue", price: "10")
			@user = User.create!(email: "email@example.com",  password: "123456")
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
			@product.comments.create!(rating: 3, user: @user, body: "OK!")
			@product.comments.create!(rating: 5, user: @user, body: "Fab bike!")
		end

		context "when the product has comments" do
	end

	context "is not valid"
	it "returns the average rating of all comments" do
	expect(@product.average_rating).to eq 3
	

	Product.new(description: "Nice bike")
	expect(Product.new(description: "Nice bike")).not_to be_valid
	end
end
