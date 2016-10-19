package co.grandcircus.expITAlumni.model;

public class Question {

	private Integer qId;
	private String question;
	private String questionOwner;
	private String date;
	
	public Question()
	{
		
	}
	
	public Question(Integer qId, String question, String qOwner, String date) {
		super();
		this.qId = qId;
		this.question = question;
		this.questionOwner = qOwner;
		this.date= date;
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

	public String getQuestionOwner() {
		return questionOwner;
	}

	public void setQuestionOwner(String questionOwner) {
		this.questionOwner = questionOwner;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
}
