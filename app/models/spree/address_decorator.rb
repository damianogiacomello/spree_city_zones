Spree::Address.class_eval do
  belongs_to :city
  
  attr_accessor :city
  before_validation :get_city_id_or_name
  
  attr_accessible :city_id, :city_name
  
  def get_city_id_or_name
    self.city = true if !self.city_id.blank? || !self.city_name.blank?
  end
  
  def state_text
    city.nil? ? city_name : city.name
  end
end