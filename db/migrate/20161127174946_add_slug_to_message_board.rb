class AddSlugToMessageBoard < ActiveRecord::Migration
  def change
    add_column :message_boards, :slug, :string
  end
end
