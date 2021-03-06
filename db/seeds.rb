# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all
App.destroy_all
JobListing.destroy_all

user1 = User.create(name: "Uzoma Airguzo", email: "uzoma@gmail.com", phone_number: "301-999-9090", address: "1234 Hollywood Lane")
user2 = User.create(name: "Sebastian Dornel", email: "bassy@gmail.com", phone_number: "301-809-2033", address: "5678 Pokemon Terrace")
user3 = User.create(name: "Olivia Carter", email: "olivia@gmail.com", phone_number: "814-983-2303", address: "9012 Peach Tree Lane")
user4 = User.create(name: "Steward Griffen", email: "steward@gmail.com", phone_number: "828-344-9087", address: "3456 Harry Blvd")

company1 = Company.create(name: "Capitol One", email: "capitolone@hotmail.com")
company2 = Company.create(name: "Whole Foods", email: "wholefoods@hotmail.com")
company3 = Company.create(name: "Suntrust", email: "suntrust@hotmail.com")
company4 = Company.create(name: "Verizon", email: "verizon@hotmail.com")


job_listing1 = JobListing.create(name: "Accountant", details: "placeholder text", salary: 80000, education_level: "Ph.D", experience_level: "Senior", status: "Open", company_id: company1.id)
job_listing2 = JobListing.create(name: "TelePrompter", details: "placeholder text", salary: 100000, education_level: "Masters in Telecommunications or Equivalent Experience", experience_level: "Mid", status: "Open", company_id: company4.id)
job_listing3 = JobListing.create(name: "Web Developer", details: "placeholder text", salary: 100000, education_level: "Bachelor's in computer science or related field preferred", status: "Closed", experience_level: "Mid", company_id: company2.id)
job_listing4 = JobListing.create(name: "Software Engineer", details: "placeholder text", salary: 120000, education_level: "Bachelor's in computer science or related field preferred", status: "Open", experience_level: "Junior", company_id: company3.id)

app1 = App.create(application_date: "2020-01-01 12:00:00", user_id: user1.id, status: "accepted", job_listing_id: job_listing1.id)
app2 = App.create(application_date: "2020-01-02 12:00:00", user_id: user2.id, status: "declined", job_listing_id: job_listing2.id)
app3 = App.create(application_date: "2020-01-03 12:00:00", user_id: user3.id, status: "pending", job_listing_id: job_listing3.id)
app4 = App.create(application_date: "2020-01-04 12:00:00", user_id: user4.id, status: "pending", job_listing_id: job_listing4.id)
