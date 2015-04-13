class AddCasteToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :caste, :string
  end
end
