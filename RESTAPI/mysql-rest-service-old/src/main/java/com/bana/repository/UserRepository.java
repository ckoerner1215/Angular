package com.bana.entity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.bana.entity.User;

@RepositoryRestResource(path = "/users")
public interface UserRepository extends JpaRepository<User, String> {

}

