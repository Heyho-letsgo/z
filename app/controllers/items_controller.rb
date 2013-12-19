class ItemsController < ApplicationController
include ItemsHelper

	def index
	  @items = Item.all
	end

	def show
	 	@item = Item.find(params[:id])
	 	@comment = Comment.new
		@comment.item_id = @item.id

	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		@item.save
		flash.notice = "Item a été '#{@item.title}' créée !! "
		redirect_to item_path(@item)
	end
	
	def destroy
		Item.find(params[:id]).destroy
		redirect_to items_path()
		flash.notice = "Item a été détruit !! "
	end

	def edit
		@item = Item.find(params[:id])

	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		flash.notice = "Item mis '#{@item.title}' à jour"
		redirect_to item_path(@item)

	end


end

