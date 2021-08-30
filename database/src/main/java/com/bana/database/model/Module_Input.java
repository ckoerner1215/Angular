package com.bana.database.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Module_Input")
public class Module_Input implements Serializable{
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Input_ID")
	private int id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "Module_ID", nullable = false)
	private int moduleID;
	
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

	public int getModuleID() {
		return moduleID;
	}

	public void setModuleID(int moduleID) {
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
