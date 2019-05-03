class ChangeTypeColumnInPeople < ActiveRecord::Migration[5.2]
  def change
      rename_column :people, :type, :position
  end
end
