package com.bana.database.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bana.database.model.Module;
import com.bana.database.model.Module_Input;

public interface Module_InputRepository extends JpaRepository<Module_Input, Integer> {
  List<Module_Input> findByModuleId(Integer moduleId);
}
