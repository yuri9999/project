package book.bean;


public class BookDTO {
	private int seq;				// 순번
	private String code;			// 티켓코드
	private String flightName1;		// 노선1편명
	private String flightName2;		// 노선2편명
	private String depGo;			// 출발일시(갈때)
	private String arrGo;			// 도착일시(갈때
	private String depBack;			// 출발일시(올때)
	private String arrBack;			// 도착일시(올때)
	private String age;				// 성인구분
	private int totalPrice;			// 합계금액
	private String memberId;		// 결제ID
	private int nop;				// 구매티켓 수
	private String payment;			// 결제방식
	private int luggage;			// 수하물여부
	private String seatName1;		// 좌석번호1
	private String seatName2;		// 좌석번호2
	private int seatPrice1;			// 좌석 추가요금 1
	private int seatPrice2;			// 좌석 추가요금 2
	private String eatery;			// 기내식
	private String bookTime;		// 예약일시
	
	public String getBookTime() {
		return bookTime;
	}
	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getFlightName1() {
		return flightName1;
	}
	public void setFlightName1(String flightName1) {
		this.flightName1 = flightName1;
	}
	public String getFlightName2() {
		return flightName2;
	}
	public void setFlightName2(String flightName2) {
		this.flightName2 = flightName2;
	}
	public String getDepGo() {
		return depGo;
	}
	public void setDepGo(String dayGo) {
		this.depGo = dayGo;
	}
	public String getArrGo() {
		return arrGo;
	}
	public void setArrGo(String arrGo) {
		this.arrGo = arrGo;
	}
	public String getDepBack() {
		return depBack;
	}
	public void setDepBack(String depBack) {
		this.depBack = depBack;
	}
	public String getArrBack() {
		return arrBack;
	}
	public void setArrBack(String arrBack) {
		this.arrBack = arrBack;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getNop() {
		return nop;
	}
	public void setNop(int nop) {
		this.nop = nop;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getLuggage() {
		return luggage;
	}
	public void setLuggage(int luggage) {
		this.luggage = luggage;
	}
	public String getSeatName1() {
		return seatName1;
	}
	public void setSeatName1(String seatName1) {
		this.seatName1 = seatName1;
	}
	public String getSeatName2() {
		return seatName2;
	}
	public void setSeatName2(String seatName2) {
		this.seatName2 = seatName2;
	}
	public int getSeatPrice1() {
		return seatPrice1;
	}
	public void setSeatPrice1(int seatPrice1) {
		this.seatPrice1 = seatPrice1;
	}
	public int getSeatPrice2() {
		return seatPrice2;
	}
	public void setSeatPrice2(int seatPrice2) {
		this.seatPrice2 = seatPrice2;
	}
	public String getEatery() {
		return eatery;
	}
	public void setEatery(String eatery) {
		this.eatery = eatery;
	}
	
	
}
