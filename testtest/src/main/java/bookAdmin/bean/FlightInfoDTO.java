package bookAdmin.bean;

import java.util.Date;

public class FlightInfoDTO {
	private int seq;			
	private String depAirport1; 	//출발공항
	private String depAirCode1; 	//출발공항코드
	private String arrAirport1;		//도착공항
	private String arrAirCode1;		//도착공항코드
	private String depDate1;		//출발날짜
	private String flightName1;		//편명
	private String depTime1;		//가는시간
	private String arrTime1;		//도착시간
	private int depPrice1;			//정규운임요금
	private int depFuelPrice1;		//유류할증료
	private int depAirportPrice1;	//공항시설사용료
	
	
	
	@Override
	public String toString() {
		return "FlightInfoDTO [seq=" + seq + ", depAirport1=" + depAirport1 + ", depAirCode1=" + depAirCode1
				+ ", arrAirport1=" + arrAirport1 + ", arrAirCode1=" + arrAirCode1 + ", depDate1=" + depDate1
				+ ", flightName1=" + flightName1 + ", depTime1=" + depTime1 + ", arrTime1=" + arrTime1 + ", depPrice1="
				+ depPrice1 + ", depFuelPrice1=" + depFuelPrice1 + ", depAirportPrice1=" + depAirportPrice1 + "]";
	}
	public String getDepAirCode1() {
		return depAirCode1;
	}
	public void setDepAirCode1(String depAirCode1) {
		this.depAirCode1 = depAirCode1;
	}
	public String getArrAirCode1() {
		return arrAirCode1;
	}
	public void setArrAirCode1(String arrAirCode1) {
		this.arrAirCode1 = arrAirCode1;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getDepAirport1() {
		return depAirport1;
	}
	public void setDepAirport1(String depAirport1) {
		this.depAirport1 = depAirport1;
	}
	public String getArrAirport1() {
		return arrAirport1;
	}
	public void setArrAirport1(String arrAirport1) {
		this.arrAirport1 = arrAirport1;
	}
	public String getDepDate1() {
		return depDate1;
	}
	public void setDepDate1(String depDate1) {
		this.depDate1 = depDate1;
	}
	public String getFlightName1() {
		return flightName1;
	}
	public void setFlightName1(String flightName1) {
		this.flightName1 = flightName1;
	}
	public String getDepTime1() {
		return depTime1;
	}
	public void setDepTime1(String depTime1) {
		this.depTime1 = depTime1;
	}
	public String getArrTime1() {
		return arrTime1;
	}
	public void setArrTime1(String arrTime1) {
		this.arrTime1 = arrTime1;
	}
	public int getDepPrice1() {
		return depPrice1;
	}
	public void setDepPrice1(int depPrice1) {
		this.depPrice1 = depPrice1;
	}
	public int getDepFuelPrice1() {
		return depFuelPrice1;
	}
	public void setDepFuelPrice1(int depFuelPrice1) {
		this.depFuelPrice1 = depFuelPrice1;
	}
	public int getDepAirportPrice1() {
		return depAirportPrice1;
	}
	public void setDepAirportPrice1(int depAirportPrice1) {
		this.depAirportPrice1 = depAirportPrice1;
	}
	
	
	
}
