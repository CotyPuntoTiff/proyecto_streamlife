class CreateSocials < ActiveRecord::Migration[5.2]
  def change
    create_table :socials do |t|
      t.integer :name_social
      t.string :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
