# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


   u = User.new(
              :email => "shnoah@gmail.com",
              :name => "노승호",
              :encrypted_password => "$2a$10$mva2lZWaskHxhhvbdBvy7us2MQNUAXcMc3ujA23AIau5TcOSaHb9C",
              :phone => "01051208808"       
               )

    u.save!(:validate => false)