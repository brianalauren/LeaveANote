class AddFeaturedNotesToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :is_featured, :boolean, default:false
  end
end
