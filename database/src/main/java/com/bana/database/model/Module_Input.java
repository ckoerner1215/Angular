package com.bana.database.model;

import javax.persistence.*;

@Entity
@Table(name = "Module_Input")
public class Module_Input {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Input_ID")
	private int id;

	@Column(name = "Module_ID")
	private String moduleID;
	
	@Column(name = "Input_Filename")
	private String inputFilename;
	
	@Column(name = "Input_Type")
	private String inputType;
	
	@Column(name = "Input_Notes")
	private String inputNotes;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModuleID() {
		return moduleID;
	}

	public void setModuleID(String moduleID) {
		this.moduleID = moduleID;
	}

	public String getInputFilename() {
		return inputFilename;
	}

	public void setInputFilename(String inputFilename) {
		this.inputFilename = inputFilename;
	}

	public String getInputType() {
		return inputType;
	}

	public void setInputType(String inputType) {
		this.inputType = inputType;
	}

	public String getInputNotes() {
		return inputNotes;
	}

	public void setInputNotes(String inputNotes) {
		this.inputNotes = inputNotes;
	}

	@Override
	public String toString() {
		return "Module_Input [id=" + id + ", moduleID=" + moduleID + ", inputFilename=" + inputFilename + ", inputType="
				+ inputType + ", inputNotes=" + inputNotes + "]";
	}

}
