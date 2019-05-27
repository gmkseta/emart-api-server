class CreateUserAuths < ActiveRecord::Migration[5.2]
  def change
    create_table :user_auths do |t|
      t.string :id_card
      t.string :face_image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
