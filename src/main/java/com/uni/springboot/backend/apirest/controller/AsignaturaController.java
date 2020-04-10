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

import com.uni.springboot.backend.apirest.models.Asignatura;
import com.uni.springboot.backend.apirest.service.AsignaturaService;

@RestController
@RequestMapping("/api/asignaturas")
public class AsignaturaController {

	
	@Autowired
	private AsignaturaService asignaturaService;
	
	
	@GetMapping("")
	public List<Asignatura> findAll(){
		return this.asignaturaService.findAll();
	}
	
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Asignatura asignatura = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			asignatura = this.asignaturaService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignatura == null) {
			response.put("mensaje",	 "La asignatura, cuyo identificador es '".concat(id.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Asignatura>(asignatura, HttpStatus.OK);
	}
	
	
	@GetMapping("/nombre")
	public ResponseEntity<?> getAsignaturaPorNombre(@RequestParam String nombre){
		Asignatura asignatura = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			asignatura = this.asignaturaService.getAsignaturaPorNombre(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignatura == null) {
			response.put("mensaje",	 "La asignatura con nombre: '".concat(nombre).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Asignatura>(asignatura, HttpStatus.OK);
	}
	
	
	
	
	@GetMapping("/busquedaAsignaturas")
	public List<Asignatura> findListaAsignatura(@RequestParam String universidad, 
			@RequestParam String facultad,
			@RequestParam String grado,
			@RequestParam String curso){
		return this.asignaturaService.findListaAsignaturas(universidad, facultad, grado, curso);
	}
}
