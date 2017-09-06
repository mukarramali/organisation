module EmployeesHelper
  def google_maps_autocomplete_load
    javascript_tag('',src: '//maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCZKYyehirTIx6_ELgPSzbJkxw3kuW6k-0')
  end
end
