package com.uni.springboot.backend.apirest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.repository.UniversidadRepository;

@Service
public class UniversidadService {
	@Autowired
	private UniversidadRepository universidadRepository;
	
	public Universidad create() {
		final Universidad u = new Universidad();
		return u;
	}
	
	public List<Universidad> findAll() {
		return this.universidadRepository.findAll();
	}
	
	public Universidad findOne(final long universidadId) {
		return this.universidadRepository.findById(universidadId).orElse(null);
	}
	
	public Long findUniId(String nombreUni) {
		return this.universidadRepository.findUniId(nombreUni);
	}
	
	public Universidad findByName(String name) {
		return this.universidadRepository.findByName(name);
	}
	
	public Universidad save(final Universidad u) {
		return this.universidadRepository.save(u);
	}
	
	public Universidad edit(Long idUniversidad, Universidad universidad) {
		Universidad uni = this.findOne(idUniversidad);
		uni.setNombre(universidad.getNombre());
		
		Universidad saved = this.save(uni);
		return saved;
	}
	
	public void delete(final Universidad universidad) {
		this.universidadRepository.delete(universidad);
	}
	
	
	
}
