package com.bana.database.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bana.database.model.Module;
import com.bana.database.model.Module_Input;
import com.bana.database.repository.ModuleRepository;
import com.bana.database.repository.Module_InputRepository;

//@CrossOrigin(origins = "http://localhost:8081")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api")
public class Module_InputController {

  @Autowired
  private Module_InputRepository moduleInputRepository;

  @Autowired
  private ModuleRepository moduleRepository;

  @GetMapping("/moduleinputs")
  public ResponseEntity<List<Module_Input>> getAllModuleInputs() {
    try {
      List<Module_Input> moduleInputs = new ArrayList<Module_Input>();

        System.out.println("find All Module Inputs");
        moduleInputRepository.findAll().forEach(moduleInputs::add);

      if (moduleInputs.isEmpty()) {
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
      }

      return new ResponseEntity<>(moduleInputs, HttpStatus.OK);
    } catch (Exception e) {
      return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }

  @GetMapping("/moduleinputs/{id}")
  public ResponseEntity<Module_Input> getModuleInputById(@PathVariable("id") int id) {
    Optional<Module_Input> moduleInputData = moduleInputRepository.findById(id);

    System.out.println("***********");
    System.out.println(moduleInputData);

    if (moduleInputData.isPresent()) {
      return new ResponseEntity<>(moduleInputData.get(), HttpStatus.OK);
    } else {
      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
  }

  @DeleteMapping("/moduleinputs/{id}")
  public ResponseEntity<HttpStatus> deleteModuleInput(@PathVariable("id") int id) {
    try {
      moduleInputRepository.deleteById(id);
      return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    } catch (Exception e) {
      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }

  @DeleteMapping("/moduleinputs")
  public ResponseEntity<HttpStatus> deleteAllModuleInputs() {
    try {
      moduleInputRepository.deleteAll();
      return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    } catch (Exception e) {
      return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

  }

  @GetMapping("/moduleinputs/module/{moduleId}")
  public ResponseEntity<List<Module_Input>> getInputsByModuleId(@PathVariable("moduleId") Integer moduleId) {
      List<Module_Input> moduleInputList =  moduleInputRepository.findByModuleId(moduleId);
    if (!moduleInputList.isEmpty()) {
      return new ResponseEntity<>(moduleInputList, HttpStatus.OK);
    } else {
      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
  }

}
