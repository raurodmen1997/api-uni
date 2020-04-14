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

import com.uni.springboot.backend.apirest.models.Facultad;
import com.uni.springboot.backend.apirest.service.FacultadService;

@RestController
@RequestMapping("/api/facultades")
public class FacultadController {

	@Autowired
	private FacultadService facultadService;
	
	@GetMapping("")
	public List<Facultad> findAll(){
		return this.facultadService.findAll();
		
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Facultad facultad = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultad = this.facultadService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad, cuyo identificador es '".concat(id.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Facultad>(facultad, HttpStatus.OK);
		
	}
	
	
	
	@GetMapping("/nombre")
	public ResponseEntity<?> findByName(@RequestParam String nombre){
		Facultad facultad = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultad = this.facultadService.findByName(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad, cuyo nombre es '".concat(nombre).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Facultad>(facultad, HttpStatus.OK);
		
	}
	
	
	
	@GetMapping("/busquedaFacultades")
	public List<Facultad> findFacuUni(@RequestParam String universidad){
		return this.facultadService.findFacuUni(universidad);
	}
	
	@GetMapping("/facuId")
	public ResponseEntity<?> findFacuId(@RequestParam String nombreFacu){
		Long facultadId = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultadId = this.facultadService.findFacuId(nombreFacu);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(facultadId == null) {
			response.put("mensaje",	 "La facultad con nombre: ".concat(nombreFacu.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Long>(facultadId, HttpStatus.OK);
		
	}

	
}
