class AddUserIdToNarratives < ActiveRecord::Migration[6.1]
  def change
    add_reference(:narratives, :user, foreign_key: { name: 'tomonori' })
  end
end
