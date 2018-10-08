package book.bean;

import java.util.Date;

public class BookDTO {
	private int seq; //순번
	private String id;				// 고객아이디
	private String koreanName;		// 고객한글 이름
	private String englishName;		// 고객영어 이름
	private String birthday;		//고객생년월일 
	private String passportNum;		// 고객여권번호
	private String nation;			// 고객국적
	private String code;			// 티켓코드(국내,국제 구분용)
	private String flightName1;		//노선1편명   인천->다낭 24:00
	private String flightName2 ;	// 노선2편명  다낭->인천
	private String airportName1 ;	//출발지  인천 
	private String airportName2 ;	// 도착지  다낭 
	private String dep1 ;			// 출발일시(갈때) //시간은제외 2018-11-11
	private String ar1 ;			// 도착일시(갈때)//시간은제외  2018-11-11
	private String dep2 ;			// 출발일시(올때) //시간은제외 
	private String ar2 ;			// 도착일시(올때) //시간은제외
	private String age ;			// 성인구분 
	private int totalPrice ;		// 총항공운임료 
	private int nop ;				// 구매티켓 수 
	private int luggage ;				// 수하물여부
	private String seat ;			// 좌석 추가요금
	private String eatery ;			// 기내식 추가요금
	private Date bookTime ;			//예약일시
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getKoreanName() {
		return koreanName;
	}
	public void setKoreanName(String koreanName) {
		this.koreanName = koreanName;
	}
	public String getEnglishName() {
		return englishName;
	}
	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPassportNum() {
		return passportNum;
	}
	public void setPassportNum(String passportNum) {
		this.passportNum = passportNum;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
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
	public String getAirportName1() {
		return airportName1;
	}
	public void setAirportName1(String airportName1) {
		this.airportName1 = airportName1;
	}
	public String getAirportName2() {
		return airportName2;
	}
	public void setAirportName2(String airportName2) {
		this.airportName2 = airportName2;
	}
	public String getDep1() {
		return dep1;
	}
	public void setDep1(String dep1) {
		this.dep1 = dep1;
	}
	public String getAr1() {
		return ar1;
	}
	public void setAr1(String ar1) {
		this.ar1 = ar1;
	}
	public String getDep2() {
		return dep2;
	}
	public void setDep2(String dep2) {
		this.dep2 = dep2;
	}
	public String getAr2() {
		return ar2;
	}
	public void setAr2(String ar2) {
		this.ar2 = ar2;
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
	public int getNop() {
		return nop;
	}
	public void setNop(int nop) {
		this.nop = nop;
	}
	public int getLuggage() {
		return luggage;
	}
	public void setLuggage(int luggage) {
		this.luggage = luggage;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getEatery() {
		return eatery;
	}
	public void setEatery(String eatery) {
		this.eatery = eatery;
	}
	public Date getBookTime() {
		return bookTime;
	}
	public void setBookTime(Date bookTime) {
		this.bookTime = bookTime;
	}
	
	
	
}
