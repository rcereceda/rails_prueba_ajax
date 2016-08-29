# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Claim.destroy_all
User.destroy_all
Company.destroy_all

companies = []
20.times do |i|
	companies << Company.create(name: "Compañía #{i+1}")
end

users = []
30.times do
	users << User.create(email: "#{Faker::Name.first_name.downcase}@gmail.com", password: '123456')
end

250.times do |i|
	Claim.create(comment: "Reclamo #{i+1}", user: users.sample, company: companies.sample, created_at: Faker::Date.between(30.days.ago, Date.today))
end