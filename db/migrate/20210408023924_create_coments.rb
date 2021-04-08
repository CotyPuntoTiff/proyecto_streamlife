class CreateComents < ActiveRecord::Migration[5.2]
  def change
    create_table :coments do |t|
      t.string :content
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
