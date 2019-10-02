class BookmarksController < ApplicationController
	def create
		m = Micropost.find(bookmark_params[:micropost_id])
		b = Bookmark.new
		b.user_id = current_user.id
		b.save!

		m.bookmark_id = b.id
		m.save!
		
		redirect_to '/'
	end

	private
	  def bookmark_params
			params.permit(:micropost_id)
		end
end
