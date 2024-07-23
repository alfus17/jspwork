package chun.univ.dto;

public class userInfo {
	
	private String studentNo; 			// 학생번호
	private	String departmentNo; 		// 학과 번호
	private String studentName; 		// 학생 이름
	private	String studentSsn; 		// 학생 주민번호
	private	String studentAddress; 	// 학생 주소
	private	String entranceDate; 		// 입학 년도
	private	String absenceYs; 			//  휴학 여부
	private	String coachProfessorNo; 	// 지도교수 사번
	
	public String getstudentNo() {
		return studentNo;
	}
	public void setstudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	
	
	public String getdepartmentNo() {
		return departmentNo;
	}
	public void setdepartmentNo(String departmentNo) {
		this.departmentNo = departmentNo;
	}
	
	
	public String getstudentName() {
		return studentName;
	}
	public void setstudentName(String studentName) {
		this.studentName = studentName;
	}
	
	
	public String getstudentSsn() {
		return studentSsn;
	}
	public void setstudentSsn(String studentSsn) {
		this.studentSsn = studentSsn;
	}
	
	
	public String getstudentAddress() {
		return studentAddress;
	}
	public void setstudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}
	
	
	public String getentranceDate() {
		return entranceDate;
	}
	public void setentranceDate(String entranceDate) {
		this.entranceDate = entranceDate;
	}
	
	
	public String getabsenceYs() {
		return absenceYs;
	}
	public void setabsenceYs(String absenceYs) {
		this.absenceYs = absenceYs;
	}
	
	
	public String getcoachProfessorNo() {
		return coachProfessorNo;
	}
	public void setcoachProfessorNo(String coachProfessorNo) {
		this.coachProfessorNo = coachProfessorNo;
	}
	
	// toString() 
	@Override
	public String toString() {
		return "userInfo [studentNo=" + studentNo + ", departmentNo=" + departmentNo + ", studentName="
				+ studentName + ", studentSsn=" + studentSsn + ", studentAddress=" + studentAddress
				+ ", entranceDate=" + entranceDate + ", absenceYs=" + absenceYs + ", coachProfessorNo="
				+ coachProfessorNo + "]";
	}
	

}
