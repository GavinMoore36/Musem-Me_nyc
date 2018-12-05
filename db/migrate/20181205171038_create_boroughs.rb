class CreateBoroughs < ActiveRecord::Migration[5.2]
  def change
    create_table :boroughs do |t|
      t.string :name
    end
  end
end
