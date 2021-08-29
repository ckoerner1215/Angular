package com.bana.database.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Workflow_Path")
public class Workflow_Path {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Path_ID")
	private int id;

	@Column(name = "Workflow_ID")
	private int workflowID;

	@Column(name = "Module_ID")
	private int moduleID;

	@Column(name = "Module_ksh")
	private String moduleKsh;

	@Column(name = "Path_Notes")
	private String pathNotes ;

	@Column(name = "Path_Status")
	private String pathStatus ;

	@Column(name = "")
	private int ;


}
