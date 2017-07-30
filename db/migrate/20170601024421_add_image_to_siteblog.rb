class AddImageToSiteblog < ActiveRecord::Migration[5.0]
  def self.up
  	add_column :siteblogs, :image_file_name, :string
  	add_column :siteblogs, :image_content_type, :string
  	add_column :siteblogs, :image_file_size, :integer
  end
  def self.down
  	
  end
end


