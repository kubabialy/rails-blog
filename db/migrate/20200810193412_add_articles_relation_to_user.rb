class AddArticlesRelationToUser < ActiveRecord::Migration[6.0]
  def up
    change_table :articles do |t|
      t.belongs_to :users, {null: false, foreign_key: true}
    end
  end

  def down
    change_table :articles do |t|
      t.remove_belongs_to :users
    end
  end
end
