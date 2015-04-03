require_relative '../../config/application'

class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    t.integer :group_id
    t.integer :user_id
    end
  end
end