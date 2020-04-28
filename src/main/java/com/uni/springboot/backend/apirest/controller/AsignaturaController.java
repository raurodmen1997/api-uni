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
import com.uni.springboot.backend.apirest.service.UniversidadService;

@RestController
@RequestMapping("/api/asignaturas")
public class AsignaturaController {

	
	@Autowired
	private GradoService gradoService;
	
	@Autowired
	private AsignaturaService asignaturaService;
	
	@Autowired
	private CursoService cursoService;
	
	@Autowired
	private FacultadService facultadService;
	
	@Autowired
	private UniversidadService universidadService;
	
	
	@GetMapping("")
	public ResponseEntity<?> findAll(){
		List<Asignatura> asignaturas = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			asignaturas = this.asignaturaService.findAll();
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturas.isEmpty()) {
			response.put("resultado", asignaturas);
			response.put("mensaje",	 "No se han encontrado asignaturas.");
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK); 
		}
		
		return new ResponseEntity<List<Asignatura>>(asignaturas, HttpStatus.OK);
		
		
	}
	
	
	@GetMapping("/{id}")
	public ResponseEntity<?> findOne(@PathVariable Long id){
		Asignatura asignatura = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			asignatura = this.asignaturaService.findOne(id);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
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
		Collection<Asignatura> asignaturas = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			asignaturas = this.asignaturaService.getAsignaturaPorNombre(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturas.isEmpty()) {
			response.put("mensaje",	 "La asignatura con nombre '".concat(nombre).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Asignatura>>(asignaturas, HttpStatus.OK);
	}
	
	//---CREAR ASIGNATURA---
	@PostMapping("")
	public ResponseEntity<?> create(@Valid @RequestBody Asignatura asignatura, BindingResult result){
		Asignatura asignaturaNew = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		if(result.hasErrors()) {
			List<String> errores = result.getFieldErrors().stream()
				.map(err -> "Error en el campo '" + err.getField() + "': " + err.getDefaultMessage())
				.collect(Collectors.toList());
			response.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.BAD_REQUEST); 
		}
		
		try {
			asignaturaNew = this.asignaturaService.save(asignatura);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
	
		response.put("mensaje", "La asignatura ha sido creada con éxito.");
		response.put("Asignatura", asignaturaNew);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
	}
	
	//---EDITAR ASIGNATURA---
	@PutMapping("/{idAsignatura}")
	public ResponseEntity<?> modificarAsignatura(@PathVariable Long idAsignatura, 
			@Valid @RequestBody Asignatura asignatura, BindingResult result) throws Exception {
		Map<String, Object> response = new HashMap<String, Object>();
		Asignatura asignaturaEditada = null;
		Asignatura a = this.asignaturaService.findOne(idAsignatura);
		
		if(a == null) {
			response.put("mensaje",	 "La asignatura cuyo identificador es '".concat(idAsignatura.toString()).concat("', no existe."));
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
			asignaturaEditada = this.asignaturaService.edit(idAsignatura, asignatura);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar el insert en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}catch(Exception e) {
			response.put("mensaje", " Ha ocurrido un error:");
			response.put("error", e.getMessage());
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
				
		}
		
		response.put("mensaje", "La asignatura ha sido editada con éxito.");
		response.put("Asignatura", asignaturaEditada);
		return new ResponseEntity<Map<String, Object>>(response ,HttpStatus.CREATED); 
		
	}
	
	//---BORRAR ASIGNATURA---
	@DeleteMapping("/{asignaturaId}")
	public ResponseEntity<?> eliminarAsignatura(@PathVariable Long asignaturaId){
		Map<String, Object> response = new HashMap<String, Object>();
		Asignatura  asignatura = this.asignaturaService.findOne(asignaturaId);
		
		if(asignatura == null) {
			response.put("mensaje",	 "La asignatura cuyo identificador es '".concat(asignaturaId.toString()).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			this.asignaturaService.delete(asignatura);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		response.put("mensaje", "La asignatura ha sido borrado con exito.");
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	}
	
	@GetMapping("/grado")
	public ResponseEntity<?> asignaturasPorGrado(@RequestParam String nombre){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Asignatura> asignaturasPorGrado = null;
		Grado grado = this.gradoService.findGradoNombre(nombre);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado cuyo nombre es '".concat(nombre).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			asignaturasPorGrado = this.asignaturaService.getAsignaturasPorGrado(nombre);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturasPorGrado.isEmpty()) {
			response.put("mensaje",	 "El grado cuyo nombre es '".concat(nombre).concat("' no tiene asignaturas disponibles."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Asignatura>>(asignaturasPorGrado, HttpStatus.OK);
		
	}
	
	@GetMapping("/asignaturasPorGradoYCurso")
	public ResponseEntity<?> asignaturasPorGrado(@RequestParam String nombreGrado, @RequestParam String nombreCurso){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Asignatura> asignaturasPorGradoYCurso = null;
		Grado grado = this.gradoService.findGradoNombre(nombreGrado);
		Curso curso = this.cursoService.findPorNombre(nombreCurso);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado cuyo nombre es '".concat(nombreGrado).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		if(curso == null) {
			response.put("mensaje",	 "El curso cuyo nombre es '".concat(nombreCurso).concat("' no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			asignaturasPorGradoYCurso = this.asignaturaService.getAsignaturasPorGradoYCurso(nombreGrado, nombreCurso);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturasPorGradoYCurso.isEmpty()) {
			response.put("mensaje",	 "El grado cuyo nombre es '".concat(nombreGrado).concat("' y curso '").concat(nombreCurso).concat("' no tiene asignaturas."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Asignatura>>(asignaturasPorGradoYCurso, HttpStatus.OK);
		
	}
	
	
	
	@GetMapping("/busquedaAsignaturas")
	public ResponseEntity<?> findListaAsignatura(@RequestParam String universidad, 
			@RequestParam String facultad,
			@RequestParam String grado,
			@RequestParam String curso){	
		Universidad uni = null;
		Facultad facul = null;
		Grado gra = null;
		Curso cur = null;
		List<Asignatura> asignaturas = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		uni = this.universidadService.findByName(universidad);
		facul = this.facultadService.findByName(facultad);
		gra = this.gradoService.findGradoNombre(grado);
		cur = this.cursoService.findPorNombre(curso);
		
		if(uni == null) {
			response.put("mensaje",	 "La universidad, cuyo nombre es '".concat(universidad).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}else if(facul == null) {
			response.put("mensaje",	 "La facultad, cuyo nombre es '".concat(facultad).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}else if(gra == null) {
			response.put("mensaje",	 "El grado, cuyo nombre es '".concat(grado).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}else if (cur == null) {
			response.put("mensaje",	 "El curso, cuyo nombre es '".concat(curso).concat("', no existe."));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
				
		
		try {
			asignaturas = this.asignaturaService.findListaAsignaturas(universidad, facultad, grado, curso);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos.");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		
		
		return new ResponseEntity<List<Asignatura>>(asignaturas, HttpStatus.OK);
	}
	
}
