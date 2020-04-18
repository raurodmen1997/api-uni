package com.uni.springboot.backend.apirest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Asignatura;
import com.uni.springboot.backend.apirest.repository.AsignaturaRepository;

@Service
public class AsignaturaService {
	
	@Autowired
	private AsignaturaRepository asignaturaRepository;
	
	public List<Asignatura> findAll() {
		return this.asignaturaRepository.findAll();
	}
	
	public Asignatura findOne(final Long asignaturaId) {
		return this.asignaturaRepository.findById(asignaturaId).orElse(null);
	}
	
	public Asignatura getAsignaturaPorNombre(String nombre) {
		return this.asignaturaRepository.getAsignaturaPorNombre(nombre);
	}
	
	/*public List<Asignatura> findListaAsignaturas(String universidad, 
			String facultad, String grado, String curso){
		return this.asignaturaRepository.findListaAsignaturas(universidad, facultad, grado, curso);
	}

	public Asignatura save(final Asignatura a) {
		return this.asignaturaRepository.save(a);
	}
	
	
	public void delete(Long id) {
		this.asignaturaRepository.deleteById(id);
	}*/

}
