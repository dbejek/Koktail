class AddUserToDestination < ActiveRecord::Migration
  def change
    add_reference :coctails, :user, index: true, foreign_key: true
  end
end