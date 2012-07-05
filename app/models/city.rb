class City < ActiveRecord::Base
  belongs_to :state
  has_one :country, :through => :state
  has_one :zone_member, :as => :zoneable
  has_one :zone, :through => :zone_member
  
  validates :state, :name, :presence => true
  validates_uniqueness_of :name, :scope => [:state_id]

  def to_s
    name
  end

  def state_and_city
    if state
      state.name + ' - ' + name
    else
      name
    end
  end
end
