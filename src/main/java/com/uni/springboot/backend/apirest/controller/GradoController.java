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
import com.uni.springboot.backend.apirest.models.Curso;
import com.uni.springboot.backend.apirest.models.Facultad;
import com.uni.springboot.backend.apirest.models.Grado;
import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.service.AsignaturaService;
import com.uni.springboot.backend.apirest.service.CursoService;
import com.uni.springboot.backend.apirest.service.FacultadService;
import com.uni.springboot.backend.apirest.service.GradoService;

@RestController
@RequestMapping("/api/grados")
public class GradoController{
	
	@Autowired
	private GradoService gradoService;
	
	
	@Autowired
	private FacultadService facultadService;
	
	@GetMapping("")
	public List<Grado> findAll(){
		return this.gradoService.findAll();
		
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Grado grado = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			grado = this.gradoService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		
		if(grado == null) {
			response.put("mensaje",	 "El grado, cuyo identificador es '".concat(id.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		
		return new ResponseEntity<Grado>(grado, HttpStatus.OK);
		
	}
	
	@GetMapping("/nombre")
	public ResponseEntity<?> findOne(@RequestParam String nombre){
		Collection<Grado> grados = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			grados = this.gradoService.findGradoNombre(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		
		if(grados == null) {
			response.put("mensaje",	 "El grado, cuyo nombre es '".concat(nombre).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		
		return new ResponseEntity<Collection<Grado>>(grados, HttpStatus.OK);
		
	}
	
	
	//---CREAR GRADO---
	@PostMapping("")
	public ResponseEntity<?> create(@Valid @RequestBody Grado grado, BindingResult result){
		Grado gradoNew = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		if(result.hasErrors()) {
			List<String> errores = result.getFieldErrors().stream()
				.map(err -> "Error en el campo '" + err.getField() + "': " + err.getDefaultMessage())
				.collect(Collectors.toList());
			response.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.BAD_REQUEST); 
		}
		
		try {
			gradoNew = this.gradoService.save(grado);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
	
		response.put("mensaje", "El grado ha sido creado con éxito.");
		response.put("Grado", gradoNew);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
	}
	
	//---EDITAR GRADO---
	@PutMapping("/{idGrado}")
	public ResponseEntity<?> modificarGrado(@PathVariable Long idGrado, 
			@Valid @RequestBody Grado grado, BindingResult result) throws Exception {
		Map<String, Object> response = new HashMap<String, Object>();
		Grado gradoEditado = null;
		Grado g = this.gradoService.findOne(idGrado);
		
		if(g == null) {
			response.put("mensaje",	 "El grado, cuyo ID es '".concat(idGrado.toString()).concat("', no existe."));
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
			gradoEditado = this.gradoService.edit(idGrado, grado);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}catch(Exception e) {
			response.put("mensaje", " Ha ocurrido un error:");
			response.put("error", e.getMessage());
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}
		
		return new ResponseEntity<Grado>(gradoEditado ,HttpStatus.CREATED); 
		
	}
	
	//---BORRAR GRADO---
	@DeleteMapping("/{gradoId}")
	public ResponseEntity<?> eliminarGrado(@PathVariable Long gradoId){
		Map<String, Object> response = new HashMap<String, Object>();
		Grado  grado = this.gradoService.findOne(gradoId);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado con ID: ".concat(gradoId.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			this.gradoService.delete(grado);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		response.put("mensaje", "El grado ha sido borrado con exito");
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	}

	
	@GetMapping("/facultad")
	public ResponseEntity<?> gradosPorFacultad(@RequestParam String nombre){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Grado> gradosPorFacultad = null;
		Collection<Facultad> facultad = this.facultadService.findByName(nombre);
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad con nombre: ".concat(nombre).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			gradosPorFacultad = this.gradoService.getGradosPorFacultad(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(gradosPorFacultad.isEmpty()) {
			response.put("mensaje",	 "La facultad con nombre: ".concat(nombre).concat(" no tiene grados disponibles"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Grado>>(gradosPorFacultad, HttpStatus.OK);
		
	}
	
	
	/*
	@GetMapping("/gradoId")
	public ResponseEntity<?> findGradoId(@RequestParam String nombreGrado){
		Long gradoId = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			gradoId = this.gradoService.findGradoId(nombreGrado);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(gradoId == null) {
			response.put("mensaje",	 "El grado con nombre: ".concat(nombreGrado.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Long>(gradoId, HttpStatus.OK);
		
	}
	*/
	
	@GetMapping("/busquedaGrados")
	public List<Grado> findGradoFacu(@RequestParam String universidad,
			@RequestParam String facultad){
		return this.gradoService.findGradoFacu(universidad, facultad);
	}

}
 

