package co.grandcircus.expITAlumni.model;

public class Question {

	private Integer qId;
	private String question;
	
	public Question()
	{
		
	}
	
	public Question(Integer qId, String question) {
		super();
		this.qId = qId;
		this.question = question;
	}
	
	public Integer getqId() {
		return qId;
	}
	public void setqId(Integer qId) {
		this.qId = qId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	
	
}
