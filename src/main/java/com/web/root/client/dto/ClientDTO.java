package com.web.root.client.dto;

import java.sql.Date;
import java.text.SimpleDateFormat;

/*
예약번호 |이름 |영화제목|영화관|좌석전화번호|영화시간(및날짜)|아이디|전화번호 |가격|예약된 좌석수|구매날짜
create table client(
No varchar(20) primary key,     1
Name varchar2(100) not null,    2
Title varchar2(100) not null,   3
Theater varchar2(100) not null, 4
Seat number not null,           5
Time varchar2(50) not null,     6
Id varchar2(100) not null,      7
Phone varchar2(50) not null,    8
Price number not null,          9
Count number not null,          10
BuyDate date default sysdate    11
);

desc client;
 */

public class ClientDTO {

	
	
	private String no;
	private String name;
	private String title;
	private String theater;
	private int seats;
	private String time;
	private String id;
	private String phone;
	private int price;
	private int count;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "ClientDTO [no=" + no + ", name=" + name + ", title=" + title + ", theater=" + theater + ", seats="
				+ seats + ", time=" + time + ", id=" + id + ", phone=" + phone + ", price=" + price + ", count=" + count
				+ "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
