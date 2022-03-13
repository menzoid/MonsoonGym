class RemovePackageIdFromMember < ActiveRecord::Migration[6.1]
  def change
    remove_reference :members, :package, null: false, foreign_key: true
  end
end
