Deface::Override.new(:name => "add_cities_to_admin_configuration_index",
                  :virtual_path => "admin/configurations/index",
                  :insert_bottom => "[data-hook='admin_configurations_menu']",
                  :partial => "admin/shared/cities_admin_configurations_index")
                  
Deface::Override.new(:name => "add_cities_to_admin_configuration_menu",
                  :virtual_path => "admin/shared/_configuration_menu",
                  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                  :partial => "admin/shared/cities_admin_configurations_menu")