class CreatePublicPages < ActiveRecord::Migration
  def change
    create_table :public_pages do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
