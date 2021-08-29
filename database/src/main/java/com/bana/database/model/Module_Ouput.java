package com.bana.database.model;

import javax.persistence.*;

@Entity
@Table(name = "Module_Output")
public class Module_Ouput {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Output_ID")
	private int id;

	@Column(name = "Module_ID")
	private String moduleID;
	
	@Column(name = "Output_Filename")
	private String inputFilename;
	
	@Column(name = "Output_Type")
	private String inputType;
	
	@Column(name = "Output_Notes")
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

	public String getOutputFilename() {
		return inputFilename;
	}

	public void setOutputFilename(String inputFilename) {
		this.inputFilename = inputFilename;
	}

	public String getOutputType() {
		return inputType;
	}

	public void setOutputType(String inputType) {
		this.inputType = inputType;
	}

	public String getOutputNotes() {
		return inputNotes;
	}

	public void setOutputNotes(String inputNotes) {
		this.inputNotes = inputNotes;
	}

	@Override
	public String toString() {
		return "Module_Output [id=" + id + ", moduleID=" + moduleID + ", inputFilename=" + inputFilename + ", inputType="
				+ inputType + ", inputNotes=" + inputNotes + "]";
	}

}
