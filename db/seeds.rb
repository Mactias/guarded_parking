# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

parking = ParkingSpace.new(name: 'p01', vehicle: 'car', price: 75)
parking.save!
parking = ParkingSpace.new(name: 'p02', vehicle: 'car', price: 75)
parking.save!
parking3 = ParkingSpace.new(name: 'p03', vehicle: 'motorbike', price: 50)
parking3.save!
parking4 = ParkingSpace.new(name: 'p04', vehicle: 'truck', price: 100)
parking4.save!

today = Date.today

reservation = Reservation.new(name: 'Marek Kowalski', license_plate: 'KR01233', pesel: '91021234567', start_date: Date.today+ 10, end_date: today + 11, parking_space_id: ParkingSpace.first.id)
reservation.save!
reservation = Reservation.new(name: 'Sergiusz Borkowski', license_plate: 'KR98234', pesel: '61727286531', start_date: Date.today + 15, end_date: today + 20, parking_space_id: ParkingSpace.first.id)
reservation.save!
reservation = Reservation.new(name: 'Tomasz Chmielewski', license_plate: 'WA12345', pesel: '30804498282', start_date: Date.today + 25, end_date: today + 25, parking_space_id: ParkingSpace.first.id)
reservation.save!
reservation = Reservation.new(name: 'Fryderyk Kwiatkowski', license_plate: 'WR90802', pesel: '12560723042', start_date: Date.today + 10, end_date: today + 12, parking_space_id: ParkingSpace.second.id)
reservation.save!
reservation = Reservation.new(name: 'Bazyli Adamski', license_plate: 'KI71813', pesel: '13882924263', start_date: Date.today + 10, end_date: today + 12, parking_space_id: ParkingSpace.third.id)
reservation.save!
reservation = Reservation.new(name: 'Piotr Nowicki', license_plate: 'PO82931', pesel: '53482934889', start_date: Date.today + 10, end_date: today + 12, parking_space_id: ParkingSpace.fourth.id)
reservation.save!
