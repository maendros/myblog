class TagsController < ApplicationController

		def index
		  @tags = Tag.all
		end

	def show
  		@tag = Tag.find(params[:id])
	end

		def destroy
		@tag = Tag.find(params[:id])
    	 @tag.destroy
    	 flash.notice = "Article '#{@tag.name}' destroyed!"
    	redirect_to :action => :index 
 	end
end
