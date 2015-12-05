Fruit.create(code: 1, name: "바나나", price: 3000, quantity:100, comment:"멸종위기랍니다. 지금 먹어야합니다", img:"/image/banana.png") 
Fruit.create(code: 2, name: "사과", price: 700, quantity:100, comment:"아침에는 황금이랍니다", img:"/image/apple.png")
Fruit.create(code: 3, name: "귤", price: 450, quantity:100, comment:"제주도에서 갓 공수해온 최상급 서귀포 감귤", img:"/image/orange.png")
Fruit.create(code: 4, name: "레몬", price: 500, quantity:100, comment:"시큼? 아닙니다 새콤입니다", img:"/image/lemon.png")
Fruit.create(code: 5, name: "포도", price: 2000, quantity:100, comment:"포도를 먹고싶포또..", img:"/image/grape.png")

   u = User.new(
              :email => "shnoah@gmail.com",
              :name => "노승호",
              :encrypted_password => "$2a$10$mva2lZWaskHxhhvbdBvy7us2MQNUAXcMc3ujA23AIau5TcOSaHb9C",
              :phone => "01051208808"       
               )
    u.save!(:validate => false)
    



