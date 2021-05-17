package com.bana.fileAccess.listfiles.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bana.fileAccess.listfiles.ListFiles;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class ListFilesController {

	@PostMapping("/listfiles")
    public Set<String> listFiles(@RequestBody String directory) {
		ListFiles listfiles = new ListFiles();
		Set<String> myListOfFiles = new HashSet<String>();

		try {
			//myListOfFiles = listfiles.listFilesUsingFileWalk(directory, 2);
			 myListOfFiles = listfiles.listFilesUsingFileWalkAndVisitor(directory);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return myListOfFiles;
		
	}
	@PostMapping("/listdirectories")
    public Set<String> listDirectories(@RequestBody String directory) {
		ListFiles listfiles = new ListFiles();
		Set<String> myListOfDirs = new HashSet<String>();
                int depth = 5;


		try {
			//myListOfFiles = listfiles.listFilesUsingFileWalk(directory, 2);
			 myListOfDirs = listfiles.listDirectoriesUsingFileWalk(directory,depth);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return myListOfDirs;
		
	}

	
}
