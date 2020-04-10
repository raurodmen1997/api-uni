package com.uni.springboot.backend.apirest.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.springboot.backend.apirest.models.Curso;
import com.uni.springboot.backend.apirest.models.Grado;
import com.uni.springboot.backend.apirest.repository.CursoRepository;

@Service
public class CursoService {
	@Autowired
	private CursoRepository cursoRepository;
	@Autowired
	private GradoService gradoService;
	
	
	public Curso create() {
		final Curso c = new Curso();
		return c;
	}
	
	public List<Curso> findAll() {
		return this.cursoRepository.findAll();
	}
	
	public Curso findOne(final long cursoId) {
		return this.cursoRepository.findById(cursoId).orElse(null);
	}
	

	public Curso save(final Curso c) {
		return this.cursoRepository.save(c);
	}
	
	public List<Curso> cursosPorGrado(String nombreGrado) {
		Long gradoId = this.gradoService.findGradoId(nombreGrado);
		
		if(gradoId != null) {
			Grado grado = this.gradoService.findOne(gradoId);
			List<Curso> curso  = this.cursoRepository.findAll();
			int numeroCurso = grado.getNumerocursos();
			List<Curso> cursosFiltrados = curso.subList(0, numeroCurso); 
		
			return  cursosFiltrados;
			
		}
		
		return new ArrayList<>();
		
	}
	
}
