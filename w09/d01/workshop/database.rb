# Based on http://www.jonathanleighton.com/articles/2011/awesome-active-record-bug-reports/

# Run this script with `bundle exec ruby app.rb`
require 'sqlite3'
require 'active_record'

#require classes
require './models/cars.rb'
require './models/customers.rb'

# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'
require 'csv'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/carson.db'
)

CSV.foreach("CAR_DATA.csv") do |row|
  id = row[1]
  first_name = row[2]
  last_name = row[3]
  email = row[4]
  gender = row[5]
  phone_number = row[6]
  car_make = row[7]
  car_model = row[8]
  car_year = row[9]
  cost_price = row[10]
  sale_markup = row[11]
end

binding.pry
    
