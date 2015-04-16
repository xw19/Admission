class AddPhotoToPersonal < ActiveRecord::Migration
  def change
    add_column :personals, :photo, :string
  end
end
