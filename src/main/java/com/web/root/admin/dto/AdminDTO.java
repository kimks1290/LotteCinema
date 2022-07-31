package com.web.root.admin.dto;
/*
영화번호|영화관|영화제목|영화시간|잔여석|가격 |예매한 좌석 | 예매상태
create table admin(
MovNo varchar2(100) not null , --primary key
Theater varchar2(100) not null,
Title varchar2(100) not null,
Time varchar2(50) not null,
Count number not null,
Price number not null,
Seats number default 0,
Status number default 0
);
ALTER TABLE admin ADD PRIMARY KEY (MovNO, Seats);

desc admin;
*/
public class AdminDTO {

	private String movNo;
	private String theater;
	private String title;
	private String time;
	private int  count;
	private int price;
	private int seats;
	private int status;
	
	public String getMovNo() {
		return movNo;
	}
	
	public void setMovNo(String movNo) {
		this.movNo = movNo;
	}
	
	public String getTheater() {
		return theater;
	}
	
	public void setTheater(String theater) {
		this.theater = theater;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getSeats() {
		return seats;
	}
	
	public void setSeats(int seats) {
		this.seats = seats;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "AdminDTO [movNo=" + movNo + ", theater=" + theater + ", title=" + title + ", time=" + time + ", count="
				+ count + ", price=" + price + ", seats=" + seats + ", status=" + status + "]";
	}
	
	
	
	
	
	
}
