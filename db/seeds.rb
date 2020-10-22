require 'faker'

City.destroy_all
35.times do 
  city = City.create!(name: Faker::Address.city)
end

Patient.destroy_all
20.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.ids.sample) 
end

Doctor.destroy_all
20.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: ["Généraliste", "Dentiste","Rhumatologue", "Podologue", "Neurologue"].sample, zip_code: Faker::Address.zip, city_id: City.ids.sample)
end

Appointment.destroy_all
30.times do
  appointment = Appointment.create!(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Time.between_dates(from: Date.today, to: Date.today + 200, period: :day), city_id: City.ids.sample)
end