Deface::Override.new(:name => "add_cities_to_admin_configuration_index",
                  :virtual_path => "admin/configurations/index",
                  :insert_bottom => "[data-hook='admin_configurations_menu']",
                  :partial => "admin/shared/cities_admin_configurations_index")
                  
Deface::Override.new(:name => "add_cities_to_admin_configuration_menu",
                  :virtual_path => "admin/shared/_configuration_menu",
                  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                  :partial => "admin/shared/cities_admin_configurations_menu")
                  
Deface::Override.new(:name => "add_cities_to_ship",
                  :virtual_path => "checkout/address",
                  :replace => "[id='scity']",
                  :partial => "cities/ship_field")
                  
Deface::Override.new(:name => "add_cities_to_bill",
                  :virtual_path => "checkout/address",
                  :replace => "[id='bcity']",
                  :partial => "cities/bill_field")
                  
Deface::Override.new(:name => "add_cities_to_user_form_order",
                  :virtual_path => "admin/order/_user_form",
                  :insert_after => "[data-hook='customer_guest']",
                  :partial => "admin/order/_cities")