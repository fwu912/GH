class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def create
		@item = current_user.items.build(item_params)
		if @item.save		
			redirect_to root_url
		else
			render 'static_pages/home'
		end
  end

  def destroy
  end

	private

    def item_params
      params.require(:item).permit(:description)
    end
end
