ActiveAdmin.register Flight do
  permit_params :name, :departure_at, :arrival_at, :plane_id

  show do
    h2 "Flight: #{flight.name}"  + "sadd"
    h2 "Departure time: #{flight.departure_at}"
    h2 "Arrival time: #{flight.arrival_at}"
    h2 "Plane model: #{flight.plane.name}"
    h2 "Arrival location: #{flight.plane.city.name}(#{flight.plane.city.country.name})"
    h2 "Tickets: #{flight.tickets.size}"
  end
end
