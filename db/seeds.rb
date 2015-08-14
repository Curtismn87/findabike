# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ======= Users: "email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at
user1 = User.create(email: "tb@gmail.com", encrypted_password: "ljhv", reset_password_token: "lhig", reset_password_sent_at: "2013-02-01 01:00:00", remember_created_at: "2013-02-01 01:00:00", sign_in_count: 1, current_sign_in_at: "2013-02-01 01:00:00", last_sign_in_at: "2013-02-01 01:00:00", current_sign_in_ip: "", last_sign_in_ip: "", created_at: "2013-02-01 01:00:00", updated_at: "2013-02-01 01:00:00")
user2 = User.create(email: "th@gmail.com", encrypted_password: "ougy", reset_password_token: "utf", reset_password_sent_at: "2013-02-01 01:00:00", remember_created_at: "2013-02-01 01:00:00", sign_in_count: 1, current_sign_in_at: "2013-02-01 01:00:00", last_sign_in_at: "2013-02-01 01:00:00", current_sign_in_ip: "", last_sign_in_ip: "", created_at: "2013-02-01 01:00:00", updated_at: "2013-02-01 01:00:00")

# ======= Bike: model, color, year, type, serial_number, purchase_date, purchase_price, receipt_document, receipt_photo_url
bike1 = Bike.create(model: "Trek", color: "black", year: 2013, bike_type: "hybrid", serial_number: "AK47", purchase_date: "2013-02-01", purchase_price: 550.00, receipt_document: "receipt.rtf", receipt_photo_url: "images/receipt.png")
bike2 = Bike.create(model: "Sirrius", color: "red", year: 2013, bike_type: "road", serial_number: "AK4w4567", purchase_date: "2014-02-01", purchase_price: 500.00, receipt_document: "receipt2.rtf", receipt_photo_url: "images/receipt2.png")

# ======= Incidents: user_id, bike_id, incident_address, incident_start_time, incident_end_time, location_type, description, gps_location
Incident.create(user_id: user1, bike_id: bike1, incident_address: "123 Main St", incident_start_time: "2013-02-01 01:00:00", incident_end_time: "2013-02-01 02:00:00", location_type: "alley", description: "Here's what happened", gps_location: "lat/long")
Incident.create(user_id: user2, bike_id: bike2, incident_address: "1230 15th St", incident_start_time: "2015-02-01 01:00:00", incident_end_time: "2015-02-01 02:00:00", location_type: "bike rack", description: "Here's what happened", gps_location: "lat/long")

# ======= Profiles: user_id, username, firstname, lastname, address, phone, race, ethnicity, sex, DOB
# Profile.create(user_id: 1, username: "tb", firstname: "Tom", lastname: "Beach", address: "734 Quebec Place NW", phone: "202-123-4567", race: "white", ethnicity: "white", sex: "male", DOB: "2015-08-10")
# Profile.create(user_id: 2, username: "th", firstname: "Tor", lastname: "Heyerdahl", address: "1800 Norway Ave", phone: "202-987-6543", race: "white", ethnicity: "white", sex: "male", DOB: "2015-08-20")
