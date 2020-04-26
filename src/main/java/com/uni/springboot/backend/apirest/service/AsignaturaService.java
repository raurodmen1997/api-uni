package com.uni.springboot.backend.apirest.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Asignatura;
import com.uni.springboot.backend.apirest.models.Grado;
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
	
	public Collection<Asignatura> getAsignaturasPorGrado(Long idGrado){
		return this.asignaturaRepository.getAsignaturasPorGrado(idGrado);
	}
	
	public Collection<Asignatura> getAsignaturasPorGradoYCurso(Long idGrado, Long idCurso){
		return this.asignaturaRepository.getAsignaturasPorGradoYCurso(idGrado, idCurso);
	}
	
	
	public Asignatura save(final Asignatura a) { 
		return this.asignaturaRepository.save(a);	
	}
	
	public Asignatura edit(Long idAsignatura, Asignatura asignatura) {
		Asignatura a = this.findOne(idAsignatura);
		
		a.setCodigo(asignatura.getCodigo());
		a.setCreditos(asignatura.getCreditos());
		a.setCurso(asignatura.getCurso());
		a.setGrado(asignatura.getGrado());
		a.setNombre(asignatura.getNombre());
		a.setTipo(asignatura.getTipo());
		
		Asignatura saved = this.save(a);
		return saved;
	}
	
	public void delete(final Asignatura a) {
		this.asignaturaRepository.delete(a);
	}
	
	public List<Asignatura> findListaAsignaturas(String universidad, 
			String facultad, String grado, String curso){
		return this.asignaturaRepository.findListaAsignaturas(universidad, facultad, grado, curso);
	}
}
