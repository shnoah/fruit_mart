Fruit.create(code: 1, name: "바나나", price: 3000, quantity:100, comment:"멸종위기랍니다. 지금 먹어야합니다", farm_name:"케언스 델몬트농장", address:"오스트레일리아 퀸즐랜드 마리바", img:"/image/orange.png") 
Fruit.create(code: 2, name: "사과", price: 700, quantity:100, comment:"아침에는 황금이랍니다", farm_name:"황토골 사과농장", address:"충청남도 예산군 삽교읍 상하리 217-10", img:"/image/apple.png")
Fruit.create(code: 3, name: "귤", price: 450, quantity:100, comment:"제주도에서 갓 공수해온 최상급 서귀포 감귤", farm_name:"최남단 체험 감귤농장", address:"제주특별자치도 서귀포시 남원읍 남원리 최남단체험감귤농장", img:"/image/orange.png")
Fruit.create(code: 4, name: "레몬", price: 500, quantity:100, comment:"시큼? 아닙니다 새콤입니다", farm_name:"제주 레몬농장", address:"제주특별자치도 서귀포시 안덕면 창천리", img:"/image/lemon.png")
Fruit.create(code: 5, name: "포도", price: 2000, quantity:100, comment:"포도를 먹고싶포또..", farm_name:"송산 포도농장", address:"경기도 화성시 송산면 용포리 174-2", img:"/image/grape.png")

   u = User.new(
              :email => "shnoah@gmail.com",
              :name => "노승호",
              :encrypted_password => "$2a$10$mva2lZWaskHxhhvbdBvy7us2MQNUAXcMc3ujA23AIau5TcOSaHb9C",
              :phone => "01051208808"       
               )
    u.save!(:validate => false)
    


Bucket.create(name: "바나나", quantity: 0)
Bucket.create(name: "사과", quantity: 0)
Bucket.create(name: "귤", quantity: 0)
Bucket.create(name: "레몬", quantity: 0)
Bucket.create(name: "포도", quantity: 0)

