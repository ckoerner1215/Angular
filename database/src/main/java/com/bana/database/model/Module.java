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
	private String moduleName;

	@Column(name = "DescrName")
	private String descrName;

	@Column(name = "Purpose")
	private String purpose;

	@Column(name = "ModuleCategory")
	private String moduleCategory;

	@Column(name = "LastBuild")
	private Date lastBuild;

	@Column(name = "LastExecuted")
	private Date lastExecuted;

	@Column(name = "Nbr_ksh")
	private int nbr_ksh;

        @OneToMany(mappedBy = "module", fetch = FetchType.LAZY,
              cascade = CascadeType.ALL)
        private Set<Module_Input> moduleInputs;

	public Module() {

	}

	public Module(String moduleName, String descrName, String purpose,
                      String moduleCategory, Date lastBuild, Date lastExecuted,
                      int nbr_ksh) {
		this.moduleName = moduleName;
		this.descrName = descrName;
		this.purpose = purpose;
		this.moduleCategory = moduleCategory;
		this.lastBuild = lastBuild;
		this.lastExecuted = lastExecuted;
		this.nbr_ksh = nbr_ksh;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getDescrName() {
		return descrName;
	}

	public void setDescrName(String descrName) {
		this.descrName = descrName;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getModuleCategory() {
		return moduleCategory;
	}

	public void setModuleCategory(String moduleCategory) {
		this.moduleCategory = moduleCategory;
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

	public int getNbr_ksh() {
		return nbr_ksh;
	}

	public void setNbr_ksh(int nbr_ksh) {
		this.nbr_ksh = nbr_ksh;
	}

	public int getId() {
		return id;
	}


	@Override
	public String toString() {
		return "Module [id=" + id + ", moduleName=" + moduleName + ", descrName=" + descrName + ", purpose=" + purpose
				+ ", moduleCategory=" + moduleCategory + ", lastBuild=" + lastBuild + ", lastExecuted=" + lastExecuted
				+ ", nbr_ksh=" + nbr_ksh + "]";
	}
}

