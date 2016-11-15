class AddAnnounceToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :announce, :text
  end
end
