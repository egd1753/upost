class AddBoardToBulletins < ActiveRecord::Migration[5.2]
  def change
    add_column :bulletins, :board_id, :integer
    add_index :bulletins, :board_id
  end
end
