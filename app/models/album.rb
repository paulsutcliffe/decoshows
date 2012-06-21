class Album < ActiveRecord::Base
  has_many :fotos, :dependent => :destroy
  validates :nombre, :presence => true, :length => { :maximum => 200 }
end
