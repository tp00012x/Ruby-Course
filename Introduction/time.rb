#Introduction
today = Time.new
other_today = Time.now
p today.class
p other_today

birth_date = Time.new(1991, 6, 5, 7, 30, 45)
p birth_date

#Instance methods

p other_today.month
p other_today.year
p other_today.hour
puts
p birth_date.yday
p birth_date.wday

#Predicate methods
p birth_date.monday?
p birth_date.tuesday?
p birth_date.wednesday?
p birth_date.dst?

#Add and Subtract
start_of_year = Time.new(2016, 1 ,1)
p start_of_year - 180
p start_of_year - (60 * 60 * 24)

#Comparable methods
summer = Time.new(2017, 6, 21)

p birth_date < summer
p birth_date.between?(summer, start_of_year)

#Convert time object to other object
someday = Time.new(2000, 2, 15)
p someday.to_s
p someday.ctime
p someday.to_a

#Convert time object to formatted string
p birth_date.strftime("%B %d, %Y")

#.parse and .strptime
require 'time'
p Time.parse('2016-01-01')
p Time.parse('03-04-2000')
p Time.strptime('03-04-2000', '%m-%d-%Y')