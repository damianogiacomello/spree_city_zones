module Spree
  class CitiesController < BaseController

    ssl_allowed :index

    def index
      # table of {state.id => [ city.id , city.name ]}, arrays sorted by name
      # blank is added elsewhere, if needed
      # we return ALL known information, since billing state isn't restricted
      #   by shipping state
      @city_info = Hash.new {|h, k| h[k] = []}
      City.order("name ASC").each{|city|
        @city_info[city.state_id.to_s].push [city.id, city.name]
      }
    end
  end
end