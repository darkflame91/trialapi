# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Specialization.create!(type_name: 'Orthopaedics')
Specialization.create!(type_name: 'Cardiac')
Specialization.create!(type_name: 'GP')
Specialization.create!(type_name: 'Radiology')

MediaType.create!(type_name: 'XRay')
MediaType.create!(type_name: 'Photo')
MediaType.create!(type_name: 'Prescription')
MediaType.create!(type_name: 'Audioclip')
MediaType.create!(type_name: 'Video')

15.times do
	name = FFaker::Name.name
	email = FFaker::Internet.safe_email
	phone = FFaker::PhoneNumber.short_phone_number
	aadharno = FFaker::Lorem.characters(10)
	dob = FFaker::Time.date

	User.create!(
		email: email,
		phone: phone,
		aadharno: aadharno,
		dob: dob,
		password: "password",
		password_confirmation: "password",
		name: name
	)
end

5.times do |n|
	bmi = rand(15..40)
	Patient.create!(
		user_id: n+1,
		bmi: bmi
	)
end

15.times do |n|
	spec = rand(1..4)
	Doctor.create!(
		user_id: n+6,
		specialization_id: spec
	)
end