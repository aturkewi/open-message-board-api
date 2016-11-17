class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_name
      t.text :content
      t.integer :message_board_id

      t.timestamps null: false
    end
  end
end
