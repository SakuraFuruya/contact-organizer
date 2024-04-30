# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database"
Company.destroy_all
Employee.destroy_all

puts "Creating database"

company_a = Company.new(company_name: "Company A", industry: "Consulting", address: "Reforma 222, Ciudad de Mexico")
company_a.save!
company_b = Company.new(company_name: "Company B", industry: "Bank", address: "Insurgentes Sur 1500, Ciudad de Mexico")
company_b.save!

employee_a = Employee.new(fullname: "Alejandra Perez", phone_number: 5511112222, email: "alejandra@example.com", company_id: company_a.id )
employee_a.save!
employee_b = Employee.new(fullname: "Gerardo Garcia", phone_number: 5511113333, email: "gerardo@example.com", company_id: company_b.id )
employee_b.save!

puts "Created all"
