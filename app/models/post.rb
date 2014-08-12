class Post < ActiveRecord::Base
  
  attr_accessible :name, :photo
  
 
  has_attached_file :photo,
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google-drive.yml",
    :google_drive_options => {
      :public_folder_id => " ",
 
      :path => proc { |style| "#{style}_#{id}_#{photo.original_filename}" }
    }

end
