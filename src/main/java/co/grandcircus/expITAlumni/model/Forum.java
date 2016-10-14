package co.grandcircus.expITAlumni.model;

public class Forum {
	private Integer q_id ;
	private String  question;
	private Integer a_id ;
   private String  answer;
public Forum(Integer q_id, String question, Integer a_id, String answer) {
	super();
	this.q_id = q_id;
	this.question = question;
	this.a_id = a_id;
	this.answer = answer;
}
public Integer getQ_id() {
	return q_id;
}
public void setQ_id(Integer q_id) {
	this.q_id = q_id;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public Integer getA_id() {
	return a_id;
}
public void setA_id(Integer a_id) {
	this.a_id = a_id;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
   
   

}
