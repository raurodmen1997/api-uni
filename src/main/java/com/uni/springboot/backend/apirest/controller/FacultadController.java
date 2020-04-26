package com.uni.springboot.backend.apirest.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uni.springboot.backend.apirest.models.Asignatura;
import com.uni.springboot.backend.apirest.models.Facultad;
import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.service.FacultadService;

@RestController
@RequestMapping("/api/facultades")
public class FacultadController {

	@Autowired
	private FacultadService facultadService;
	
	@GetMapping("")
	public ResponseEntity<?> findAll(){
		List<Facultad> facultades = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultades = this.facultadService.findAll();
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(facultades.isEmpty()) {
			response.put("resultado", facultades);
			response.put("mensaje",	 "No se han encontrado facultades.");
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK); 
		}
		
		return new ResponseEntity<List<Facultad>>(facultades, HttpStatus.OK);
		
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Facultad facultad = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultad = this.facultadService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
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
		Collection<Facultad> facultad = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			facultad = this.facultadService.findByName(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad, cuyo nombre es '".concat(nombre).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Facultad>>(facultad, HttpStatus.OK);
		
	}
	
	
	//---CREAR FACULTAD---
	@PostMapping("")
	public ResponseEntity<?> create(@Valid @RequestBody Facultad facultad, BindingResult result){
		Facultad facultadNew = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		if(result.hasErrors()) {
			List<String> errores = result.getFieldErrors().stream()
				.map(err -> "Error en el campo '" + err.getField() + "': " + err.getDefaultMessage())
				.collect(Collectors.toList());
			response.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.BAD_REQUEST); 
		}
		
		try {
			facultadNew = this.facultadService.save(facultad);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
	
		response.put("mensaje", "La facultad ha sido creada con éxito.");
		response.put("Facultad", facultadNew);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
	}
	
	//---EDITAR FACULTAD---
	@PutMapping("/{idFacultad}")
	public ResponseEntity<?> modificarFacultad(@PathVariable Long idFacultad, 
			@Valid @RequestBody Facultad facultad, BindingResult result) throws Exception {
		Map<String, Object> response = new HashMap<String, Object>();
		Facultad facultadEditada = null;
		Facultad f = this.facultadService.findOne(idFacultad);
		
		if(f == null) {
			response.put("mensaje",	 "La facultad, cuyo ID es '".concat(idFacultad.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		if(result.hasErrors()) {
			List<String> errores = result.getFieldErrors().stream()
				.map(err -> "Error en el campo '" + err.getField() + "': " + err.getDefaultMessage())
				.collect(Collectors.toList());
			response.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.BAD_REQUEST); 
		}
		
		try {
			facultadEditada = this.facultadService.edit(idFacultad, facultad);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}catch(Exception e) {
			response.put("mensaje", " Ha ocurrido un error:");
			response.put("error", e.getMessage());
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}
		
		return new ResponseEntity<Facultad>(facultadEditada ,HttpStatus.CREATED); 
		
	}
	
	//---BORRAR FACULTAD---
	@DeleteMapping("/{facultadId}")
	public ResponseEntity<?> eliminarFacultad(@PathVariable Long facultadId){
		Map<String, Object> response = new HashMap<String, Object>();
		Facultad  facultad = this.facultadService.findOne(facultadId);
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad con ID: ".concat(facultadId.toString()).concat(" no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			this.facultadService.delete(facultad);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		response.put("mensaje", "La facultad ha sido borrado con exito.");
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	}
	
	
	
	@GetMapping("/universidad")
	public List<Facultad> findFacuUni(@RequestParam String nombre){
		return this.facultadService.findFacuUni(nombre);
	}
	
	
	/*
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

*/
	
}
