package com.bana.database.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Workflow")
public class Workflow {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Workflow_ID")
	private int id;

	@Column(name = "Workflow_Name")
	private String workflowName;

	@Column(name = "Analyst_ID")
	private int analystID;

	@Column(name = "Workflow_Date")
	private Date workflowDate;

	@Column(name = "Workflow_Notes")
	private String workflowNotes ;

	@Column(name = "Workflow_Status")
	private String workflowStatus ;

	@Column(name = "Status_Date")
	private Date statusDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWorkflowName() {
		return workflowName;
	}

	public void setWorkflowName(String workflowName) {
		this.workflowName = workflowName;
	}

	public int getAnalystID() {
		return analystID;
	}

	public void setAnalystID(int analystID) {
		this.analystID = analystID;
	}

	public Date getWorkflowDate() {
		return workflowDate;
	}

	public void setWorkflowDate(Date workflowDate) {
		this.workflowDate = workflowDate;
	}

	public String getWorkflowNotes() {
		return workflowNotes;
	}

	public void setWorkflowNotes(String workflowNotes) {
		this.workflowNotes = workflowNotes;
	}

	public String getWorkflowStatus() {
		return workflowStatus;
	}

	public void setWorkflowStatus(String workflowStatus) {
		this.workflowStatus = workflowStatus;
	}

	public Date getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(Date statusDate) {
		this.statusDate = statusDate;
	}

	@Override
	public String toString() {
		return "Workflow [id=" + id + ", workflowName=" + workflowName + ", analystID=" + analystID + ", workflowDate="
				+ workflowDate + ", workflowNotes=" + workflowNotes + ", workflowStatus=" + workflowStatus
				+ ", statusDate=" + statusDate + "]";
	}

}
