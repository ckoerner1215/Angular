package com.bana.database.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Workflow_Path")
public class Workflow_Path {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Path_ID")
	private int id;

	@Column(name = "Workflow_ID")
	private int workflowID;

	@Column(name = "Module_ID")
	private int moduleID;

	@Column(name = "Module_ksh")
	private String moduleKsh;

	@Column(name = "Path_Notes")
	private String pathNotes ;

	@Column(name = "Path_Status")
	private String pathStatus ;

	@Column(name = "Status_Date")
	private Date statusDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getWorkflowID() {
		return workflowID;
	}

	public void setWorkflowID(int workflowID) {
		this.workflowID = workflowID;
	}

	public int getModuleID() {
		return moduleID;
	}

	public void setModuleID(int moduleID) {
		this.moduleID = moduleID;
	}

	public String getModuleKsh() {
		return moduleKsh;
	}

	public void setModuleKsh(String moduleKsh) {
		this.moduleKsh = moduleKsh;
	}

	public String getPathNotes() {
		return pathNotes;
	}

	public void setPathNotes(String pathNotes) {
		this.pathNotes = pathNotes;
	}

	public String getPathStatus() {
		return pathStatus;
	}

	public void setPathStatus(String pathStatus) {
		this.pathStatus = pathStatus;
	}

	public Date getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(Date statusDate) {
		this.statusDate = statusDate;
	}

	@Override
	public String toString() {
		return "Workflow_Path [id=" + id + ", workflowID=" + workflowID + ", moduleID=" + moduleID + ", moduleKsh="
				+ moduleKsh + ", pathNotes=" + pathNotes + ", pathStatus=" + pathStatus + ", statusDate=" + statusDate
				+ "]";
	}


}
