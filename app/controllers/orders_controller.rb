class OrdersController < ApplicationController

	def index
	end

	def show
	end

	def new
	end

	def create
		@order = Order.new (params[:product_id, :user_id, :total])
	end

	def destroy
	end

	before_filter :authenticate_user!

end








