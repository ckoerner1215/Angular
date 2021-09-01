package com.bana.database.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Module_Notes")
public class ModuleNotes {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Notes_ID")
	private int id;

	@Column(name = "Module_ID")
	private int moduleID;

	@Column(name = "Analyst_ID")
	private int analystID;

	@Column(name = "Date_Entered")
	private Date dateEntered ;

	@Column(name = "AnalystNotes")
	private String analystNotes;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getModuleID() {
		return moduleID;
	}

	public void setModuleID(int moduleID) {
		this.moduleID = moduleID;
	}

	public int getAnalystID() {
		return analystID;
	}

	public void setAnalystID(int analystID) {
		this.analystID = analystID;
	}

	public Date getDateEntered() {
		return dateEntered;
	}

	public void setDateEntered(Date dateEntered) {
		this.dateEntered = dateEntered;
	}

	public String getAnalystNotes() {
		return analystNotes;
	}

	public void setAnalystNotes(String analystNotes) {
		this.analystNotes = analystNotes;
	}

	@Override
	public String toString() {
		return "ModuleNotes [id=" + id + ", moduleID=" + moduleID + ", analystID=" + analystID + ", dateEntered="
				+ dateEntered + ", analystNotes=" + analystNotes + "]";
	}

}
