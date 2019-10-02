class BookmarksController < ApplicationController
  before_action :logged_in_user, only: [:create]

	def create
		b = Bookmark.new
		m = Micropost.find(params['micropost_id'])
		b.user_id = current_user.id
		b.save!

		m.bookmark_id = b.id
		m.save!

		redirect_to current_user
	end

	private
    def bookmark_params
			params.permit(:user_id, :micropost_id)
		end
end
