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
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uni.springboot.backend.apirest.models.Grado;
import com.uni.springboot.backend.apirest.models.Universidad;
import com.uni.springboot.backend.apirest.service.GradoService;

@RestController
@RequestMapping("/api/grados")
public class GradoController{
	
	@Autowired
	private GradoService gradoService;
	
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
	
	@GetMapping("/busquedaGrados")
	public List<Grado> findGradoFacu(@RequestParam String universidad,
			@RequestParam String facultad){
		return this.gradoService.findGradoFacu(universidad, facultad);
	}

}
 

