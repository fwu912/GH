class StaticPagesController < ApplicationController
  
	# GET /posts
  # GET /posts.json
  # GET /posts.js	
	def home
		if Item.any?		
			@items = Item.page(params[:page]).per(5)
		end
		@item = current_user.items.build if user_signed_in?
		


  end

  def help
  end

	def about
	end

	def contact
	end

	def brad
	end

end
