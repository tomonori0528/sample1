class AddPhotoidToNarratives < ActiveRecord::Migration[6.1]
  def change
    add_column :narratives, :photo_id, :integer
  end
end
