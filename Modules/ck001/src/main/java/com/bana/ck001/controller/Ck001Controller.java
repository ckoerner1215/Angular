package com.bana.ck001.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import com.bana.ck001.model.Module;


@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class Ck001Controller {

        private static final String template = "Hello, %s!";

        @RequestMapping("/ck001/run")
        public String run() {
		ProcessBuilder processBuilder = new ProcessBuilder();

		processBuilder.command("/bin/sh", "-c", "cd src/main/resources/static ; ./ck001.ksh ; ls -l");
                String outputline="<br />";

		try {

		    Process process = processBuilder.start();

		    BufferedReader reader =
			    new BufferedReader(new InputStreamReader(process.getInputStream()));

		    String line;
		    while ((line = reader.readLine()) != null) {
			System.out.println(line);
			outputline=outputline+line+"<br />";
		    }

		    int exitCode = process.waitFor();
		    System.out.println("\nExited with error code : " + exitCode);

		} catch (IOException e) {
		    e.printStackTrace();
		} catch (InterruptedException e) {
		    e.printStackTrace();
		}
		return String.format(outputline);
        }

        @PostMapping("/ck001/run")
        public String runModule(@RequestBody Module module) {
                ProcessBuilder processBuilder = new ProcessBuilder();

                String command="cd src/main/resources/static ; ./ck001_2.ksh ";
		command = command + module.getInfile1() + " " + module.getInfile2() + " " + module.getOutputDirectory() + " ;";
		command = command + "ls -l";

                processBuilder.command("/bin/sh", "-c", command);
                String outputline="%n";

                try {

                    Process process = processBuilder.start();

                    BufferedReader reader =
                            new BufferedReader(new InputStreamReader(process.getInputStream()));

                    String line;
                    while ((line = reader.readLine()) != null) {
                        System.out.println(line);
                        outputline=outputline+line+"%n";
                    }
		    outputline=outputline + " %n" + module.getDescription() +" %n";

                    int exitCode = process.waitFor();
                    System.out.println("\nExited with error code : " + exitCode);

                } catch (IOException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                return String.format(outputline);
        }


        @RequestMapping("/ck001/{name}")
        public String hello(@PathVariable("name")  String name) {
                return String.format("Welcome, %s!", name);
        }
}

