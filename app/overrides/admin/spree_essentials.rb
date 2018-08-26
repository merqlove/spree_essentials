# Adds the Content button to the admin tabs
Deface::Override.new(
  :virtual_path  => 'spree/layouts/admin',
  :name          => 'spree_essential_admin_tabs',
  :insert_after  => 'erb[loud]:contains("render partial: \'spree/admin/shared/main_menu\'")',
  :partial       => 'admin/shared/contents_tab')
