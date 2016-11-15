class RemoveSummaryFromNotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :notes, :summary, :text
  end
end
