Plane.create(places: 300, model: 'AN 228')
Plane.create(places: 180, model: 'Apache')
Plane.create(places: 180, model: 'AN 123')
Plane.create(places: 3, model: 'Mig 321')

usa = Country.create(name: 'USA')
canada = Country.create(name: 'Canada')
russia = Country.create(name: 'Russia')
ukraine = Country.create(name: 'Ukraine')

City.create(name: 'LA', country: usa)
City.create(name: 'Toronto', country: canada)
City.create(name: 'Ufa', country: russia)
City.create(name: 'Kiev', country: ukraine)

date = DateTime.new(2017,rand(1..12),rand(1..30),rand(1..24),rand(1..60),6) 

Flight.create(name: 'F123', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
Flight.create(name: 'S234', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
Flight.create(name: 'T345', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
Flight.create(name: 'F456', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
Flight.create(name: 'F567', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
Flight.create(name: 'S678', departure_at: date, arrival_at: date + rand(0.0..1.0), city: City.all.sample,
              plane: Plane.all.sample)
