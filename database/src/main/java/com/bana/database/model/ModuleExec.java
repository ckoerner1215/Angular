package com.bana.database.model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Module_Exec")
public class ModuleExec {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Exec_ID")
	private int id;

	@Column(name = "Module_ID")
	private String moduleID;

	@Column(name = "LastExecuted")
	private Date lastExecuted ;

	@Column(name = "BuildNbr")
	private int buildNbr;

	@Column(name = "Analyst_ID")
	private int analystID ;

	@Column(name = "Exec_VM")
	private String vm;

	@Column(name = "Exec_Time")
	private Date time ;

	@Column(name = "Exec_Notes")
	private String notes;

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

	public Date getLastExecuted() {
		return lastExecuted;
	}

	public void setLastExecuted(Date lastExecuted) {
		this.lastExecuted = lastExecuted;
	}

	public int getBuildNbr() {
		return buildNbr;
	}

	public void setBuildNbr(int buildNbr) {
		this.buildNbr = buildNbr;
	}

	public int getAnalystID() {
		return analystID;
	}

	public void setAnalystID(int analystID) {
		this.analystID = analystID;
	}

	public String getVm() {
		return vm;
	}

	public void setVm(String vm) {
		this.vm = vm;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		return "ModuleExec [id=" + id + ", moduleID=" + moduleID + ", lastExecuted=" + lastExecuted + ", buildNbr="
				+ buildNbr + ", analystID=" + analystID + ", vm=" + vm + ", time=" + time
				+ ", notes=" + notes + "]";
	}

}
