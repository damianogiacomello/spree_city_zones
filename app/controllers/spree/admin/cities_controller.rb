module Spree
  module Admin
    class CitiesController < ResourceController
      belongs_to 'spree/state'
      before_filter :load_data

      def index
        respond_with(@collection) do |format|
          format.html
          format.js  { render :partial => 'city_list' }
        end
      end

      protected

      def location_after_save
        admin_country_state_cities_url(@country,@state)
      end

      def location_after_create
        admin_country_state_cities_url(@country,@state)
      end

      def collection
        super.order(:name)
      end

      def load_data
        @countries = Country.order(:name)
        @country = Country.find(params[:country_id])
        @states = State.order(:name)
        @state = State.find(params[:state_id])
      end
    end
  end
end
