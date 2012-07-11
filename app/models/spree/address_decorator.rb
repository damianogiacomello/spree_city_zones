Spree::Address.class_eval do
  belongs_to :city
  
  attr_accessible :city_id, :city_name
  
  def state_text
    city.nil? ? city_name : city.name
  end
end