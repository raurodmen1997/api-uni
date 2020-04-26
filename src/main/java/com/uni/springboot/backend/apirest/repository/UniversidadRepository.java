package com.uni.springboot.backend.apirest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uni.springboot.backend.apirest.models.Universidad;

@Repository
public interface UniversidadRepository extends JpaRepository<Universidad, Long>{

	/*
	@Query("select u.id from universidades u where u.nombre=?1")
	Long findUniId(String nombre);
	*/
	
	
	@Query("select u from universidades u where u.nombre=?1")
	Universidad findByName(String name);
	
}
