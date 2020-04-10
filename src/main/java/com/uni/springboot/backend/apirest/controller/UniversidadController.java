package com.uni.springboot.backend.apirest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
