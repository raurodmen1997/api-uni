package com.uni.springboot.backend.apirest.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uni.springboot.backend.apirest.models.Curso;

@Repository
public interface CursoRepository extends JpaRepository<Curso, Long>  {

	@Query("select c from cursos c where c.nombre=?1")
	Curso getCursoPorNombre(String nombre);

}
