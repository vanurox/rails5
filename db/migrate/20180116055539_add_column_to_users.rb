class AddColumnToUsers < ActiveRecord::Migration[5.1]

  def change
  	add_column :users, :fisrt_name, :string
  end

end
