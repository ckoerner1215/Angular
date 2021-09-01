package com.bana.database.model;

import javax.persistence.*;
import java.io.Serializable;

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
	private Module module;
	
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

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
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
		return "Module_Input [id=" + id + ", module=" + module + ", inputFilename=" + inputFilename + ", inputType="
				+ inputType + ", inputNotes=" + inputNotes + "]";
	}

}
