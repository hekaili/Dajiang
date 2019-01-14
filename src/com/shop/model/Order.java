package com.shop.model;

import java.sql.Date;

public class Order {

	private int order_id;    //������������
	private long order_number;//������
	private int u_id;//�û�id
	private String o_consignee;//�ջ���
	private long o_phone;//�ջ����ֻ���
	private String o_location;//�ջ���ַ
	private String goodsName;//��Ʒ����
	private int pay_price;//ʵ��֧���۸�
	private int is_pay;//�Ƿ��Ѿ�֧����0��δ֧����1����֧��
	private Date pay_time;//֧��ʱ��
	private int is_ship;//�Ƿ��Ѿ�������0��δ������1���ѷ���
	private Date ship_time;//����ʱ��
	private Date create_time;//��¼����ʱ��
	
	
	public Order() {
		super();
	}
	
	
	


	public Order(int order_id, long order_number, int u_id, String o_consignee,
			long o_phone, String o_location, String goodsName, int pay_price,
			int is_pay, Date pay_time, int is_ship, Date ship_time,
			Date create_time) {
		super();
		this.order_id = order_id;
		this.order_number = order_number;
		this.u_id = u_id;
		this.o_consignee = o_consignee;
		this.o_phone = o_phone;
		this.o_location = o_location;
		this.goodsName = goodsName;
		this.pay_price = pay_price;
		this.is_pay = is_pay;
		this.pay_time = pay_time;
		this.is_ship = is_ship;
		this.ship_time = ship_time;
		this.create_time = create_time;
	}





	public long getOrder_number() {
		return order_number;
	}
	public void setOrder_number(long order_number) {
		this.order_number = order_number;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getO_consignee() {
		return o_consignee;
	}
	public void setO_consignee(String o_consignee) {
		this.o_consignee = o_consignee;
	}
	public long getO_phone() {
		return o_phone;
	}
	public void setO_phone(long o_phone) {
		this.o_phone = o_phone;
	}
	public String getO_location() {
		return o_location;
	}
	public void setO_location(String o_location) {
		this.o_location = o_location;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public int getIs_pay() {
		return is_pay;
	}
	public void setIs_pay(int is_pay) {
		this.is_pay = is_pay;
	}
	public Date getPay_time() {
		return pay_time;
	}
	public void setPay_time(Date pay_time) {
		this.pay_time = pay_time;
	}
	public int getIs_ship() {
		return is_ship;
	}
	public void setIs_ship(int is_ship) {
		this.is_ship = is_ship;
	}
	public Date getShip_time() {
		return ship_time;
	}
	public void setShip_time(Date ship_time) {
		this.ship_time = ship_time;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	
}
