class AddBookmarkIdToMicroposts < ActiveRecord::Migration[6.0]
  def change
		add_column :microposts, :bookmark_id, :integer
  end
end
