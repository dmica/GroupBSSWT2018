class Product < ApplicationRecord
 
 def self.search(search)
  if search
   # this is the one that works
    # where(["name LIKE ?","%#{search}%"])
  where(["name LIKE ? OR model like ? or price like ? or camera like ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
  else
    all
  end
 end
 
 
 
 
 
    has_one_attached :image
    has_many :order_items
end
