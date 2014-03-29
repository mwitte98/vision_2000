class DropTables < ActiveRecord::Migration
  def change
  	drop_table :bootsy_image_galleries
  	drop_table :bootsy_images
  	drop_table :mercury_images
  end
end
