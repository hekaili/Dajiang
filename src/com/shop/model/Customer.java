package com.shop.model;

import java.sql.Date;






public class Customer {
	private int charid;//����������һ������
	private String charnext;//��������
	private int identity;//�ж����������ݵ�����
	private String send;//�ж��Ƿ�����������
	private Date chardate;//���췢�͵�����
	public Customer(String charnext, int identity, String send, Date chardate2) {
		super();
		this.charnext = charnext;
		this.identity = identity;
		this.send = send;
		this.chardate = chardate2;
	}
	public Customer(String charnext, int identity, String send) {
		super();
		this.charnext = charnext;
		this.identity = identity;
		this.send = send;
	}
	public Customer() {
		super();
	}
	public Customer(int charid, String charnext, int identity, String send,
			Date chardate) {
		super();
		this.charid = charid;
		this.charnext = charnext;
		this.identity = identity;
		this.send = send;
		this.chardate = chardate;
	}
	public int getCharid() {
		return charid;
	}
	public void setCharid(int charid) {
		this.charid = charid;
	}
	public String getCharnext() {
		return charnext;
	}
	public void setCharnext(String charnext) {
		this.charnext = charnext;
	}
	public int getIdentity() {
		return identity;
	}
	public void setIdentity(int identity) {
		this.identity = identity;
	}
	public String getSend() {
		return send;
	}
	public void setSend(String send) {
		this.send = send;
	}
	public Date getChardate() {
		return chardate;
	}
	public void setChardate(Date chardate) {
		this.chardate = chardate;
	}
	
}
