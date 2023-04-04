class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.s :title
      t.s :content

      t.timestamps
    end
  end
end
