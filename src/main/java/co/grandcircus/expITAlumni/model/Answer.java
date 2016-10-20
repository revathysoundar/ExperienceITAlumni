package co.grandcircus.expITAlumni.model;

public class Answer {

	private Integer aId;
	private String answer;
	private Integer qId;
	private String answerOwner;
	private String date;

	public Answer() {

	}

	public Answer(Integer qId, Integer aId, String answer, String answerOwner, String date) {
		super();
		this.aId = aId;
		this.answer = answer;
		this.qId = qId;
		this.answerOwner = answerOwner;
		this.date = date;
	}

	public String getAnswerOwner() {
		return answerOwner;
	}

	public void setAnswerOwner(String answerOwner) {
		this.answerOwner = answerOwner;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getaId() {
		return aId;
	}

	public void setaId(Integer aId) {
		this.aId = aId;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Integer getqId() {
		return qId;
	}

	public void setqId(Integer qId) {
		this.qId = qId;
	}

}
