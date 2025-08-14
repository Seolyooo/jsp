package dto;

public class customerDto {
	
	private String cid;
	private String name;
	private String hp;
	private String addr;
	private String rdate;
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	@Override
	public String toString() {
		return "customerDto [cid=" + cid + ", name=" + name + ", hp=" + hp + ", addr=" + addr + ", rdate=" + rdate
				+ "]";
	}
	

	
	
	
}
