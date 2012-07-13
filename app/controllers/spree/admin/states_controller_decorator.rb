module Spree
  Admin::StatesController.class_eval do
    
    def list
      @country = Country.find(params[:country_id])
      @states = @country.states.order(:name)
      @state = @states.first rescue []
      @cities = @state.cities.order(:name) rescue []
      respond_with(@states) do |format|
        format.js { render :partial => "list" }
      end
    end
  end
end