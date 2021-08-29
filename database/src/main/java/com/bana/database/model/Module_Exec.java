package com.bana.database.model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Module_Exec")
public class Module_Exec {
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
	private String execVM;

	@Column(name = "Exec_Time")
	private Date execTime ;

	@Column(name = "Exec_Notes")
	private String execNotes;

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

	public String getExecVM() {
		return execVM;
	}

	public void setExecVM(String execVM) {
		this.execVM = execVM;
	}

	public Date getExecTime() {
		return execTime;
	}

	public void setExecTime(Date execTime) {
		this.execTime = execTime;
	}

	public String getExecNotes() {
		return execNotes;
	}

	public void setExecNotes(String execNotes) {
		this.execNotes = execNotes;
	}

	@Override
	public String toString() {
		return "Module_Exec [id=" + id + ", moduleID=" + moduleID + ", lastExecuted=" + lastExecuted + ", buildNbr="
				+ buildNbr + ", analystID=" + analystID + ", execVM=" + execVM + ", execTime=" + execTime
				+ ", execNotes=" + execNotes + "]";
	}

}
