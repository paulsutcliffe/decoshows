class Foto < ActiveRecord::Base
  belongs_to :album
  
  validates_attachment_content_type :foto, :content_type =>  ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :foto, :less_than => 4.megabytes
  validates_attachment_presence :foto
  has_attached_file :foto, :styles => { :thumb => ["211x138#", :jpg], :regular => ["900x598>", :jpg] },
                            :url  => "/images/assets/fotos/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/images/assets/fotos/:id/:style/:basename.:extension"
end
