package co.grandcircus.expITAlumni.model;

public class Mentor {

	private Integer id;
	private String firstName;
	private String lastName;
	private String email;
	private String company;
	private String title;
	private String yearGraduated;
	private String description;
	private boolean available;

	public Integer getId() {
		return id;
	}

	public Mentor(Integer id, String firstName, String lastName, String email) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;

	}

	public Mentor() {

	}

	public Mentor(Integer id, String firstName, String lastName, String email, String company, String title,
			String yearGraduated, String description, boolean available) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.company = company;
		this.title = title;
		this.yearGraduated = yearGraduated;
		this.description = description;
		this.available = available;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getYearGraduated() {
		return yearGraduated;
	}

	public void setYearGraduated(String yearGraduated) {
		this.yearGraduated = yearGraduated;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

}
