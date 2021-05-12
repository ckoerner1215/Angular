package com.bana.generic.model;

import java.util.ArrayList;
import java.util.List;

public class ModuleInfo {

	private Input[] inputs;
	private RunInfo runInfo;


	public ModuleInfo() {
             Input inputs[] = new Input[3];

             Input input0 = new Input();
             input0.setKey("name");
             input0.setLabel("Name");
             input0.setDescription("The name of the module.");
             input0.setValue("  ");
             inputs[0] = input0;
             
             Input input1 = new Input();
             input1.setKey("kshFile");
             input1.setLabel(".ksh file");
             input1.setDescription(" Name of the .ksh script that will run the .exe file for the module.");
             input1.setValue("  ");
             inputs[1] = input1;

             Input input2 = new Input();
             input2.setKey("scriptLocation");
             input2.setLabel("Location of .ksh file");
             input2.setDescription(" The location of the .ksh script file.");
             input2.setValue("  ");
             inputs[2] = input2;

             this.inputs = inputs;
             
             RunInfo runInfo = new RunInfo();
             runInfo.setName("  ");
             runInfo.setKshFile("  ");
             runInfo.setScriptLocation("  ");

             this.runInfo = runInfo;

	}

	public ModuleInfo(RunInfo runInfo) {
             Input inputs[] = new Input[3];

             Input input0 = new Input();
             input0.setKey("name");
             input0.setLabel("Name");
             input0.setDescription(runInfo.getName());
             input0.setValue(runInfo.getName());
             inputs[0] = input0;
             
             Input input1 = new Input();
             input1.setKey("kshFile");
             input1.setLabel(".ksh file");
             input1.setDescription(" Name of the .ksh script that will run the .exe file for the module.");
             input1.setValue(runInfo.getKshFile());
             inputs[1] = input1;

             Input input2 = new Input();
             input2.setKey("scriptLocation");
             input2.setLabel("Location of .ksh file");
             input2.setDescription(" The location of the .ksh script file.");
             input2.setValue(runInfo.getScriptLocation());
             inputs[2] = input2;

             this.inputs = inputs;
	     this.runInfo = runInfo;
	}

	public Input[] getInputs() {
		return inputs;
	}

	public RunInfo getRunInfo() {
		return runInfo;
	}

	public void setInputs(Input[] inputs) {
		this.inputs = inputs;
	}

	public void setRunInfo(RunInfo runInfo) {
		this.runInfo = runInfo;
	}

	@Override
	public String toString() {
		return "Module Info [ Inputs = " + inputs + ", Run Info =" + runInfo + "]";
	}
}


