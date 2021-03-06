package com.uni.springboot.backend.apirest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uni.springboot.backend.apirest.models.Curso;
import com.uni.springboot.backend.apirest.models.Grado;
import com.uni.springboot.backend.apirest.service.CursoService;
import com.uni.springboot.backend.apirest.service.GradoService;

@RestController
@RequestMapping("/api/cursos")
public class CursoController {

	
	@Autowired
	private CursoService cursoService;
	@Autowired
	private GradoService gradoService;
	
	@GetMapping("")
	public ResponseEntity<?> findAll(){
		List<Curso> cursos = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			cursos = this.cursoService.findAll();
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(cursos.isEmpty()) {
			response.put("resultado", cursos);
			response.put("mensaje",	 "No se han encontrado cursos.");
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK); 
		}
		
		return new ResponseEntity<List<Curso>>(cursos, HttpStatus.OK);
	}
	
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Curso curso = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			curso = this.cursoService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(curso == null) {
			response.put("mensaje",	 "El curso, cuyo identificador es '".concat(id.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Curso>(curso, HttpStatus.OK);
	}
	
	
	
	@GetMapping("/grado")
	public ResponseEntity<?> findGradoFacu(@RequestParam(value="nombre") String nombre){
		Grado grado = null;
		List<Curso> cursos = null;
		Map<String, Object> response = new HashMap<String, Object>();
		grado = this.gradoService.findGradoNombre(nombre);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado, cuyo nombre es '".concat(nombre).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
				
		
		try {
			cursos = this.cursoService.cursosPorGrado(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		
		
		return new ResponseEntity<List<Curso>>(cursos, HttpStatus.OK);
	}
	

}
