class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :number
      t.string :address
      t.string :address_detail
      t.float :latlng_x
      t.float :latlng_y
      t.string :zipcode

      t.timestamps
    end
  end
end
