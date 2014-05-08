require 'pg'
require 'active_record'

database_name = "hospital_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

class Doctor < ActiveRecord::Base
  has_many :patients
end

class Patient <ActiveRecord::Base
  belongs_to :doctor 
end

new_patient = Patient.create({patient_name: 'Jenny Adams'})
new_doctor = Doctor.create({doctor_name: 'Dr. Blennifary'})
new_doctor.patients << new_patient

puts 'Doctor:    ' + new_doctor.doctor_name
puts 'Patient:    ' + new_doctor.patients.first.patient_name