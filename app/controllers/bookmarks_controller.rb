class BookmarksController < ApplicationController
  before_action :logged_in_user, only: [:create, :index]

	def create
		micropost = Micropost.find(params['micropost_id'])
		ActiveRecord::Base.transaction do
			b = Bookmark.new
			b.user_id = params['user_id']
			b.save!

			micropost.bookmark_id = b.id
			micropost.save!
		end

		redirect_to current_user
	end

	private
	  def bookmark_params
			params.permit(:user_id, :micropost_id)
		end
end
