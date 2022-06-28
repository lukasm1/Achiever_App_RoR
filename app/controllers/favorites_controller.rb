class FavoritesController < ApplicationController

	def create
		@favorite = current_user.favorites.new(favorite_params)

		if !@favorite.save
			flash[:notice] = @favorite.errors.full_messages.to_sentence
		end

		flash[:notice] = "Added to favorites."
		redirect_back(fallback_location: root_path)
	end

	def destroy
		@favorite = current_user.favorites.find(params[:id])
		likeable = @favorite.likeable
		@favorite.destroy

		flash[:notice] = "Removed from favorites."
		redirect_back(fallback_location: root_path)
	end


	private

	def favorite_params
		params.require(:favorite).permit(:likeable_id, :likeable_type)
	end

end
