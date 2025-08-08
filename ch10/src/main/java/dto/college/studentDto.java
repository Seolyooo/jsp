package dto.college;

public class studentDto {
	private String stdno;
	private String name;
	private String bitrh;
	private String major;
	private String enr_date;
	
	public String getStdno() {
		return stdno;
	}
	public void setStdno(String stdno) {
		this.stdno = stdno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBitrh() {
		return bitrh;
	}
	public void setBitrh(String bitrh) {
		this.bitrh = bitrh;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEnr_date() {
		return enr_date;
	}
	public void setEnr_date(String enr_date) {
		this.enr_date = enr_date;
	}
	@Override
	public String toString() {
		return "studentDto [stdno=" + stdno + ", name=" + name + ", bitrh=" + bitrh + ", major=" + major + ", enr_date="
				+ enr_date + "]";
	}

	
	
}
