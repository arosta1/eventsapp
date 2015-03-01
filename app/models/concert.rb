class Concert < ActiveRecord::Base
validates :act_name, presence: true
validates :capacity, presence: true
has_many :tickets, :dependent => :destroy

geocoded_by :location
after_validation :geocode, :if => :location_changed?

mount_uploader :image, ImageUploader

def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['act_name LIKE ? OR location LIKE ?', search_condition, search_condition])
end
end
