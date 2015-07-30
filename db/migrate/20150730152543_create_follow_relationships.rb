class CreateFollowRelationships < ActiveRecord::Migration
  def change
    create_table :follow_relationships do |t|
      t.belongs_to :user, index: true
      t.integer :follower_id

    end
  end
end
