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
	private String name;

	@Column(name = "Analyst_ID")
	private int analystID;

	@Column(name = "Workflow_Date")
	private Date date;

	@Column(name = "Workflow_Notes")
	private String notes ;

	@Column(name = "Workflow_Status")
	private String status ;

	@Column(name = "Status_Date")
	private Date statusDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAnalystID() {
		return analystID;
	}

	public void setAnalystID(int analystID) {
		this.analystID = analystID;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(Date statusDate) {
		this.statusDate = statusDate;
	}

	@Override
	public String toString() {
		return "Workflow [id=" + id + ", name=" + name + ", analystID=" + analystID + ", date="
				+ date + ", notes=" + notes + ", status=" + status
				+ ", statusDate=" + statusDate + "]";
	}

}
