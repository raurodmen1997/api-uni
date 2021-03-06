package com.uni.springboot.backend.apirest.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uni.springboot.backend.apirest.models.Asignatura;

@Repository
public interface AsignaturaRepository extends JpaRepository<Asignatura, Long>{

	@Query("select a from asignaturas a inner join a.curso cur "
			+ "inner join a.grado gra "
			+ "inner join gra.facultad facul "
			+ "inner join facul.universidad uni "
			+ "where uni.nombre=?1 AND facul.nombre=?2 AND gra.nombre=?3 AND cur.nombre=?4")
	List<Asignatura> findListaAsignaturas(String universidad, String facultad, String grado, String curso);
	
	
	@Query("select a from asignaturas a where a.nombre=?1")
	Collection<Asignatura> getAsignaturaPorNombre(String nombre);
	
	@Query("select a from asignaturas a where a.grado.nombre=?1")
	Collection<Asignatura> getAsignaturasPorGrado(String nombreGrado);
	
	@Query("select a from asignaturas a where a.grado.nombre=?1 and a.curso.nombre=?2")
	Collection<Asignatura> getAsignaturasPorGradoYCurso(String nombreGrado, String nombreCurso);

}
