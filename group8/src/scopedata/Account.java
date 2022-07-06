package scopedata;

import java.io.Serializable;

public class Account implements Serializable {
	private String id;
	private String pass;
	private String name;
	public Account() {}
	public Account(String _Id , String _pass,String _name) {
		id=_Id; pass=_pass; name=_name;
	}
	public String getId() {return id;}
	public String getPass() {return pass;}
	public String getName() {return name;}

}
