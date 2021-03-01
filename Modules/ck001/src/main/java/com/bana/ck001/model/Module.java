package com.bana.ck001.model;

public class Module {

	private String name;
	private String description;
        private String infile1;
        private String infile2;
        private String outputDirectory;
	public Module() {

	}

	public Module(String name, String description, String infile1, String infile2, String outputDirectory) {
		this.name = name;
		this.description = description;
		this.infile1 = infile1;
		this.infile2 = infile2;
		this.outputDirectory = outputDirectory;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public String getInfile1(){
		return infile1;
	}

	public String getInfile2(){
		return infile2;
	}

	public String getOutputDirectory(){
		return outputDirectory;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setInfile1(String infile1) {
		this.infile1 = infile1;
	}

	public void setInfile2(String infile2) {
		this.infile2 = infile2;
	}

	public void setOutputDirectory(String outputDirectory) {
		this.outputDirectory = outputDirectory;
	}


	@Override
	public String toString() {
		return "Module [name=" + name + ", description=" + description + ", infile1=" + infile1 + ", infile2=" + infile2 + ", outputDirectory=" + outputDirectory + "]";
	}
}


