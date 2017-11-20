ActiveAdmin.register Country do
  permit_params :name

  show do
    h3 'Country: ' + country.name
    h3 'City(-ies):'
    country.cities.each do |city|
      h3 city.name
    end
  end
end
