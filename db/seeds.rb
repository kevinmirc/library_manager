# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book = Book.create(title: "Zero to One", created_by: "Peter Thiel")

Book.create(title: "Sapiens: A Brief History of Humankind", created_by: "Yuval Harari")
Book.create(title: "Exponential Organizations", created_by: "Salim Ismail, Michael S. Malone, Yuri van Geest, Peter H. Diamandis")

Album.create(title: "The Warm Up", created_by: "J. Cole")
Album.create(title: "Man on the Moon", created_by: "Kid CuDi")
Album.create(title: "Take Care", created_by: "Drake")

Movie.create(title: "Airplane", created_by: "David Zucker, Jim Abrahams, Jerry Zucker")
Movie.create(title: "Anchorman: The Legend of Ron Burgundy", created_by: "Adam McKay")
Movie.create(title: "Austin Powers: International Man of Mystery", created_by: "Jay Roach")

librarian = Librarian.create(name: Faker::Name.name, email: Faker::Internet.email)

kevin = Member.create(name: Faker::Name.name, email: Faker::Internet.email)

Reservation.create(item: book, owner: kevin, due_date: DateTime.now + 7.days)