class AddPinsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pins, :string
  end
end
