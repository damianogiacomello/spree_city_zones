Address.class_eval do
  belongs_to :city
  
  def state_text
    city.nil? ? city_name : city.name
  end
end