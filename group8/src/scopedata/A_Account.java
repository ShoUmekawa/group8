package scopedata;

import java.io.Serializable;

public class A_Account implements Serializable {
	private String id;
	private String pass;
	public A_Account() {}
	public A_Account(String _id , String _pass) {
		id=_id; pass=_pass;
	}
	public String getId() {return id;}
	public String getPass() {return pass;}
}
