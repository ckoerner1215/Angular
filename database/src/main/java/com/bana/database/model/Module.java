package com.bana.database.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "Modules")
public class Module implements Serializable{

	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Module_ID")
	private int id;

	@Column(name = "ModuleName")
	private String name;

	@Column(name = "DescrName")
	private String description;

	@Column(name = "Purpose")
	private String purpose;

	@Column(name = "ModuleCategory")
	private String category;

	@Column(name = "LastBuild")
	private Date lastBuild;

	@Column(name = "LastExecuted")
	private Date lastExecuted;

	@Column(name = "Nbr_ksh")
	private int numberOfKshFiles;

        @OneToMany(mappedBy = "module", fetch = FetchType.LAZY,
              cascade = CascadeType.ALL)
        private Set<ModuleInput> moduleInputs;

	public Module() {

	}

	public Module(String name, String description, String purpose,
                      String category, Date lastBuild, Date lastExecuted,
                      int numberOfKshFiles) {
		this.name = name;
		this.description = description;
		this.purpose = purpose;
		this.category = category;
		this.lastBuild = lastBuild;
		this.lastExecuted = lastExecuted;
		this.numberOfKshFiles = numberOfKshFiles;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description= description;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getLastBuild() {
		return lastBuild;
	}

	public void setLastBuild(Date lastBuild) {
		this.lastBuild = lastBuild;
	}

	public Date getLastExecuted() {
		return lastExecuted;
	}

	public void setLastExecuted(Date lastExecuted) {
		this.lastExecuted = lastExecuted;
	}

	public int getNumberOfKshFiles() {
		return numberOfKshFiles;
	}

	public void setNumberOfKshFiles(int numberOfKshFiles) {
		this.numberOfKshFiles = numberOfKshFiles;
	}

	public int getId() {
		return id;
	}


	@Override
	public String toString() {
		return "Module [id=" + id + ", name=" + name + ", description=" + description + ", purpose=" + purpose
				+ ", category=" + category + ", lastBuild=" + lastBuild + ", lastExecuted=" + lastExecuted
				+ ", numberOfKshFiles=" + numberOfKshFiles + "]";
	}
}

