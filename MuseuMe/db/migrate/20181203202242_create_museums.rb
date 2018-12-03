class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :title
      t.string :address
      t.string :borough
      t.float :cooridinate_x
      t.float :coordinate_y
      t.string :url
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
