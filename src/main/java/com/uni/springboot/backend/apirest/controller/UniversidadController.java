package com.uni.springboot.backend.apirest.controller;

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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.service.UniversidadService;


@RestController
@RequestMapping("/api/universidades")
public class UniversidadController {

	
	@Autowired
	private UniversidadService universidadService;
	
	@GetMapping("")
	public List<Universidad> findAll(){
		return this.universidadService.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Universidad uni = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			uni = this.universidadService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(uni == null) {
			response.put("mensaje",	 "La universidad, cuyo identificador es '".concat(id.toString()).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Universidad>(uni, HttpStatus.OK);
	}
	
	
	
	@GetMapping("/nombre")
	public ResponseEntity<?> findByName(@RequestParam String nombre){
		Universidad uni = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			uni = this.universidadService.findByName(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(uni == null) {
			response.put("mensaje",	 "La universidad, con nombre '".concat(nombre).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Universidad>(uni, HttpStatus.OK);
	}
	
	
	@PostMapping("")
	public ResponseEntity<?> create(@Valid @RequestBody Universidad universidad, BindingResult result){
		Universidad uniNew = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		if(result.hasErrors()) {
			List<String> errores = result.getFieldErrors().stream()
				.map(err -> "Error en el campo '" + err.getField() + "': " + err.getDefaultMessage())
				.collect(Collectors.toList());
			response.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.BAD_REQUEST); 
		}
		
		try {
			uniNew = this.universidadService.save(universidad);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
	
		response.put("mensaje", "La universidad ha sido creada con éxito.");
		response.put("Universidad", uniNew);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
	}
	
	
	
	
	
	
	@GetMapping("/uniId")
	public ResponseEntity<?> findOne(@RequestParam String nombreUni){
		Long uniId = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			uniId = this.universidadService.findUniId(nombreUni);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(uniId == null) {
			response.put("mensaje",	 "La universidad con nombre: ".concat(nombreUni.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Long>(uniId, HttpStatus.OK);
	}
}
