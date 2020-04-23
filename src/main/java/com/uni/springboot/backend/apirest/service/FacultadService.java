package com.uni.springboot.backend.apirest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Facultad;
import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.repository.FacultadRepository;

@Service
public class FacultadService {

	@Autowired
	private FacultadRepository facultadRepository;
	
	public List<Facultad> findAll() {
		return this.facultadRepository.findAll();
	}
	
	public Facultad findOne(final Long facultadId) {
		return this.facultadRepository.findById(facultadId).orElse(null);
	}

	public List<Facultad> findFacuUni(String universidad) {
		return this.facultadRepository.findFacuUni(universidad);
	}
	
	public Long findFacuId(String nombreFacu) {
		return this.facultadRepository.findFacuId(nombreFacu);
	}
	
	public Facultad findByName(String name) {
		return this.facultadRepository.findByName(name);
	}
	
	public Facultad save(final Facultad c) { 
		return this.facultadRepository.save(c);	
	}
	
	public Facultad edit(Long idFacultad, Facultad facultad) {
		Facultad f = this.findOne(idFacultad);
		f.setNombre(facultad.getNombre());
		f.setUniversidad(facultad.getUniversidad());
		
		Facultad saved = this.save(f);
		return saved;
	}
	
	public void delete(final Facultad facultad) {
		this.facultadRepository.delete(facultad);
	}
	
}
