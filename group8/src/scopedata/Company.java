package scopedata;

import java.io.Serializable;

public class Company implements Serializable {
	private int id;
	private String company;
	private String addr;
	private String tel;
	private String url;
	private int capital;
	private String business;
	private String industry;
	public Company() {}
	public Company(int _id ,String _company,String _addr,String _tel,
			String _url,int _capital,String _business,String _industry) {
		id=_id;company=_company;addr=_addr;tel=_tel;url=_url;capital=_capital;business=_business;industry=_industry;
	}
	public int getId() {return id;}
	public String getCompany() {return company;}
	public String getAddr() {return addr;}
	public String getTel() {return tel;}
	public String getUrl() {return url;}
	public int getCapital() {return capital;}
	public String getBusiness() {return business;}
	public String getIndustry() {return industry;}
}
