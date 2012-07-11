module Spree
  class City < ActiveRecord::Base
    belongs_to :state
    has_one :country, :through => :state

    has_one :zone_member, :as => :zoneable
    has_one :zone, :through => :zone_member

    validates :state, :name, :presence => true
    validates_uniqueness_of :name, :scope => [:state_id]

    attr_accessible :name, :state_id, :geoname_id, :lat, :lng
    
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
end
