# The second task of hw
class TaskWithEmail
  def call
    emails = [
      'lou.hand@mohr.name', 'sigmund@schamberger.org', 'clement@kreigerbeer.co',
      'marcus_strosin@nienow.org',
      'levi.kuhn@tremblay.info', 'arlo@blickgrant.name', 'jonathon@rath.co',
      'kailee.olson@quigley.org', 'alaina@renner.net', 'dylan@mclaughlin.net',
      'luna_hyatt@ritchiecronin.name', 'amie_blick@kiehn.info',
      'carolina@bechtelargleichner.name', 'saul_heaney@heathcote.com',
      'dell_tromp@kuvalisfunk.io', 'lexie.hyatt@okuneva.com',
      'marquise@oconnerbailey.name', 'adah@hauckspencer.info',
      'gilberto@cronin.name', 'dock.braun@bins.com'
    ]

    ages = [
      30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
      15, 22, 13, 19, 20, 16, 10, 21, 25
    ]

    names = %w[
      Michel Reagan Annabelle Chanelle Jennyfer Adonis
      Vidal Lera Aurore Garrett Vergie Lauryn Paxton
      Osborne Clinton Karson Ellie Hermann Else Otilia
    ]

    users = {}

    create_users(names, ages, emails, users)

    puts 'Users under 19 years old:'
    users_over_19(users)

    puts "\nSorted hash of users by name:"
    sort_users_by_name(users)

    puts "\nArray of domains"
    email_domains(emails)
  end

  def create_users(names, ages, emails, users) # First task
    info = names.zip(ages)

    emails.length.times do |i|
      users[emails[i]] = info[i]
    end
  end

  def users_over_19(users) # Second task
    puts(users.select { |_key, value| value[1] > 19 })
  end

  def sort_users_by_name(users) # Third task
    puts users.sort_by { |_key, value| value[0] }.to_h
  end

  def email_domains(emails) # Fourth task
    p(emails.map { |email| email.split('@')[1] })
  end
end

TaskWithEmail.new.call
