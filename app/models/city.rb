class City < ActiveRecord::Base
  belongs_to :state
  has_one :country, :through => :state
  
  has_one :zone_member, :as => :zoneable
  has_one :zone, :through => :zone_member
  
  validates :state, :name, :presence => true
  validates_uniqueness_of :name, :scope => [:state_id]
  
  #geocoded_by :full_geocode, :latitude  => :lat, :longitude => :lng
  #after_validation :geocode
  
  def <=>(other)
    name <=> other.name
  end
  
  def to_s
    name
  end

  def state_and_city
    if state
      state.name + ' - ' + self.name
    else
      name
    end
  end
  
  def full_geocode
    "#{name}, #{state.abbr}, #{state.country.iso}"
  end
end
