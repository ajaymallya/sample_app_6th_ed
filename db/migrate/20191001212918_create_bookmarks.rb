class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
			t.references :user
    end

		add_column :microposts, :bookmark_id, :integer
  end
end
