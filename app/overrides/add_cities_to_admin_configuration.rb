Deface::Override.new(:name => "add_cities_to_admin_configuration_index",
                  :virtual_path => "spree/admin/configurations/index",
                  :insert_bottom => "[data-hook='admin_configurations_menu']",
                  :partial => "spree/admin/shared/cities_admin_configurations_index")
                  
Deface::Override.new(:name => "add_cities_to_admin_configuration_menu",
                  :virtual_path => "spree/admin/shared/_configuration_menu",
                  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                  :partial => "spree/admin/shared/cities_admin_configurations_menu")
                  
Deface::Override.new(:name => "add_cities_to_ship",
                  :virtual_path => "spree/checkout/address",
                  :replace => "[id='scity']",
                  :partial => "spree/cities/ship_field")
                  
Deface::Override.new(:name => "add_cities_to_bill",
                  :virtual_path => "spree/checkout/address",
                  :replace => "[id='bcity']",
                  :partial => "spree/cities/bill_field")
                  
Deface::Override.new(:name => "add_cities_to_user_form_order",
                  :virtual_path => "spree/admin/orders/_user_form",
                  :insert_after => "[data-hook='customer_guest']",
                  :partial => "spree/admin/orders/cities")