class ChangeDataSexToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :sex, :integer, using: "sex::integer"
  end
end
