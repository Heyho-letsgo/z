class Item < ActiveRecord::Base
has_many :comments  
has_attached_file :image

end
