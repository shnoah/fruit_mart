


    - 회원 부분 완료
    - 이름, 핸드폰 번호 부분 수정 완료
    - 장바구니 (Bucket)
    - 주문내역 (Orderlist)
    - 과일 추가 (페이지 수정 필요)
    


1. 물건을 구입하려는 고객은 과일가게 쇼핑몰 사이트에 회원가입을 해야 한다.



2. 회원가입을 하려면 이름, 아이디, 비밀번호, 핸드폰 번호를 입력한다. 아이디는
유일하며 회원을 식별하는 데 사용된다. 회원은 주문할 때마다 마일리지를 적립한다.

3. 과일은 
 
과일코드
물품명 (예. 사과, 배, 귤, 딸기, 바나나)
가격
재고수량


정보를 가진다.
물품은 추가될 수 있다. 예를 들면 현재에는 없었던 체리나 멜론 등 새로운 물건이
입고될 수 있다.


4. 회원은 한 번 주문으로 여러 물품을 구매할 수 있다. 
재고가 없는 물건은 구매할 수 없다.
주문이 완료될때마다 총 주문 금액의 1%를 마일리지로 적립한다.



5. 회원이 주문한 내역은 저장되며 회원정보 출력시 함께 출력된다.


1. 회원가입
2. 로그인
2.1. 회원정보 출력
2.2. 장바구니 보기
2.3. 장바구니의 내용을 주문하기. 이때 마일리지 적립을 수행.
2.4. 장바구니에 물품을 추가. 물품명과 수량을 지정할 수 있다. 예를 들면, 사과
3 개를 장바구니에 추가.


1. 회원 가입 (1 점)
2. 로그인 (1 점)
3. 장바구니에 물품 추가 (1 점)
4. 새로운 물건 입고 (DBMS 의 SQL 문을 이용하여 추가하므로 프로그램상으로 구현할
필요 없음)
5. 장바구니에 물품 추가 (4 에서 새로 입고된 물품도 선택 가능해야 함.) (1 점)
6. 장바구니 내용 보기 (1 점)
7. 장바구니의 물품 전체를 주문하기 (주문후 장바구니는 비워지고 물품별 재고 수량은
주문 수량만큼 감소한다.) (1 점)
8. DBMS 의 SQL 문을 이용하여 주문한 물품의 재고가 감소된 것을 확인.
9. 회원정보 및 구매 이력 출력 (이름, id, 비밀번호, 핸드폰 번호, 마일리지, 현재까지
구매한 정보 출력) (1 점)



#########
장바구니는 홈페이지상으로만 구현이 되고 데이터베이스에 장바구니 항목으로 저장될 필요는 없습니다.
시연을 할 때에는, 한번 로긴한 상태에서 장바구니에 아이템을 여러번 담는 것을 확인할 것입니다.
로그아웃을 하고 나갔다가 로긴을 다시 한다면 장바구니 항목을 따로 저장해야겠지만,
한번 로긴해서 아이템을 저장하고 주문을 완료한다는 가정하에서는 그럴 필요가 없겠지요.
장바구니는 주문 내역을 보기 위해 홈페이지상으로만 존재합니다.
HTML의 저장 기능을 이용하면 되리라 생각합니다. 