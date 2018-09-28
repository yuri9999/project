package boarding.bean;

import java.sql.Date;

public class BoardingDTO {
	private Date boardingDate;
	private String airnumber;
	private String name;
	private String dep;
	private String arr;
	private int price;
	private int point;
	
	public Date getBoardingDate() {
		return boardingDate;
	}
	public void setBoardingDate(Date boardingDate) {
		this.boardingDate = boardingDate;
	}
	public String getAirnumber() {
		return airnumber;
	}
	public void setAirnumber(String airnumber) {
		this.airnumber = airnumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public String getArr() {
		return arr;
	}
	public void setArr(String arr) {
		this.arr = arr;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
}
