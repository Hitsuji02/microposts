class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :follower
      t.references :followed, index: true

      t.timestamps null: false
      
      
      t.index [:follower_id, :followed_id], unique: true
    end
  end
end
