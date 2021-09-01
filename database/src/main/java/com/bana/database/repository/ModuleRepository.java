package com.bana.database.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bana.database.model.Module;

public interface ModuleRepository extends JpaRepository<Module, Integer> {
}
