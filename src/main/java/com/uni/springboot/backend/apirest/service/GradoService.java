package com.uni.springboot.backend.apirest.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Grado;
import com.uni.springboot.backend.apirest.repository.GradoRepository;

@Service
public class GradoService{
	
	@Autowired
	private GradoRepository gradoRepository;
	
	
	public Grado create() {
		final Grado res = new Grado();
		return res;
	}

	public List<Grado> findGradoFacu(String universidad, String facultad){
		return this.gradoRepository.findGradoFacu(universidad, facultad);
	}
	
	public List<Grado> findAll() {
		return this.gradoRepository.findAll();
	}
	
	public Grado findOne(final Long gradoId) {
		return this.gradoRepository.findById(gradoId).orElse(null);
	}
	
	public Long findGradoId(String nombreGrado) {
		return this.gradoRepository.findGradoId(nombreGrado);
	}

	
	public Grado save(final Grado c) { 
		return this.gradoRepository.save(c);	
	}

}
 

