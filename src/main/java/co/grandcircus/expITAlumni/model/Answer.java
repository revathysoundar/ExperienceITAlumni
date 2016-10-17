package co.grandcircus.expITAlumni.model;

public class Answer {
	
	 private Integer aId;
     private String answer;
     private Integer qId;
     
     public Answer()
     {
    	 
     }
     
     public Answer(Integer qId, Integer aId, String answer) {
         super();
         this.aId = aId;
         this.answer = answer;
         this.qId = qId; 
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


