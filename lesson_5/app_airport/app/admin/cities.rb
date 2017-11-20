ActiveAdmin.register City do
  permit_params :name, :country_id

  show do
    h3 city.country.name
    h3 city.name
    h3 'Plane(-s) model:'
    city.planes.each do |plane|
      h3 plane.name
    end
  end
end
