require 'ffaker'

Rails.logger.info "Creating the wedding..."

Wedding.create(
  date: DateTime.new(2018,5,19,16),
  couple_story: FFaker::Lorem.paragraphs(3)
)

Rails.logger.info "Creating venues..."

Venue.create(
  city: "Kraków",
  postal_code: "31-221",
  street_address: "Papiernicza 2",
  name: "Dworek Białoprądnicki",
  purpose: "reception",
  wedding_id: Wedding.pluck(:id).sample
)

Venue.create(
  city: "Kraków",
  postal_code: "31-226",
  street_address: "Ludwika Pasteura 1",
  name: "Parafia Najświętszej Maryi Panny Matki Kościoła",
  purpose: "ceremony",
  wedding_id: Wedding.pluck(:id).sample
)

Rails.logger.info "Creating users..."

User.create(
  first_name: "Julia",
  last_name: "Nowak",
  role: "Bride",
  wedding_id: Wedding.pluck(:id).sample
)

User.create(
  first_name: "Thomas",
  last_name: "Moore",
  role: "Groom",
  wedding_id: Wedding.pluck(:id).sample
)

40.times do |u|
  User.create(
    first_name: FFaker::NamePL.first_name,
    last_name: FFaker::NamePL.last_name,
    role: "Guest",
    wedding_id: Wedding.pluck(:id).sample
  )
  print '.'
end

40.times do |u|
  User.create(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    role: "Guest",
    wedding_id: Wedding.pluck(:id).sample
  )
  print '.'
end

Rails.logger.info "Creating gifts..."

40.times do |g|
  Gift.create(
    wedding_id: Wedding.pluck(:id).sample,
    name: FFaker::Book.title
  )
  print '.'
end
