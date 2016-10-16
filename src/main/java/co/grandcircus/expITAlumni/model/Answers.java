package co.grandcircus.expITAlumni.model;

public class Answers {
	

		private Integer aId;
		private String answers;
		private Integer qId;
		
		
		public Answers(Integer aId, String answers, Integer qId) {
			super();
			this.aId = aId;
			this.answers = answers;
			this.qId = qId; 
		}
		
		public Integer getaId() {
			return aId;
		}
		public void setaId(Integer aId) {
			this.aId = aId;
		}
		public String getAnswers() {
			return answers;
		}
		public void setAnswers(String answers) {
			this.answers = answers;
		}
		public Integer getqId() {
			return qId;
		}
		public void setqId(Integer qId) {
			this.qId = qId;
		}
		
		
		
	}


