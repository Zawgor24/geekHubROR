usa = Country.create(name: 'USA')
canada = Country.create(name: 'Canada')
russia = Country.create(name: 'Russia')
ukraine = Country.create(name: 'Ukraine')
israel = Country.create(name: 'Israel')

sheva = City.create(name: 'Beer-Sheva', country: israel)
la = City.create(name: 'LA', country: usa)
toronto = City.create(name: 'Toronto', country: canada)
ufa = City.create(name: 'Ufa', country: russia)
kiev = City.create(name: 'Kiev', country: ukraine)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?