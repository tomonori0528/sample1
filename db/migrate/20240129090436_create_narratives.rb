class CreateNarratives < ActiveRecord::Migration[6.1]
  def change
    create_table :narratives do |t|
      t.text :body

      t.timestamps
    end
  end
end
