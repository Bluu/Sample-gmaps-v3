class Location < ActiveRecord::Base
  acts_as_gmappable
  
  def gmaps4rails_address
    "#{self.latitude}, #{self.longitude}"
  end
  
  def gmaps4rails_infowindow
    "#{self.name}, #{self.dateinit}"
  end
end
