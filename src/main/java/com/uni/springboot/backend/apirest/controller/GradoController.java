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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uni.springboot.backend.apirest.models.Asignatura;
import com.uni.springboot.backend.apirest.models.Curso;
import com.uni.springboot.backend.apirest.models.Facultad;
import com.uni.springboot.backend.apirest.models.Grado;
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
	private AsignaturaService asignaturaService;
	
	@Autowired
	private CursoService cursoService;
	
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
	
	@GetMapping("/asignaturasPorGrado")
	public ResponseEntity<?> asignaturasPorGrado(@RequestParam Long gradoId){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Asignatura> asignaturasPorGrado = null;
		Grado grado = this.gradoService.findOne(gradoId);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado con ID: ".concat(gradoId.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			asignaturasPorGrado = this.asignaturaService.getAsignaturasPorGrado(gradoId);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturasPorGrado.isEmpty()) {
			response.put("mensaje",	 "El grado con ID: ".concat(gradoId.toString()).concat(" no tiene asignaturas"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Asignatura>>(asignaturasPorGrado, HttpStatus.OK);
		
	}
	
	@GetMapping("/asignaturasPorGradoYCurso")
	public ResponseEntity<?> asignaturasPorGrado(@RequestParam Long gradoId, @RequestParam Long cursoId){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Asignatura> asignaturasPorGradoYCurso = null;
		Grado grado = this.gradoService.findOne(gradoId);
		Curso curso = this.cursoService.findOne(cursoId);
		
		if(grado == null) {
			response.put("mensaje",	 "El grado con ID: ".concat(gradoId.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		if(curso == null) {
			response.put("mensaje",	 "El curso con ID: ".concat(cursoId.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			asignaturasPorGradoYCurso = this.asignaturaService.getAsignaturasPorGradoYCurso(gradoId, cursoId);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(asignaturasPorGradoYCurso.isEmpty()) {
			response.put("mensaje",	 "El grado con ID: ".concat(gradoId.toString()).concat(" y curso con ID: ").concat(cursoId.toString()).concat(" no tiene asignaturas"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Asignatura>>(asignaturasPorGradoYCurso, HttpStatus.OK);
		
	}
	
	@GetMapping("/gradosPorFacultad")
	public ResponseEntity<?> gradosPorFacultad(@RequestParam Long facultadId){
		Map<String, Object> response = new HashMap<String, Object>();
		Collection<Grado> gradosPorFacultad = null;
		Facultad facultad = this.facultadService.findOne(facultadId);
		
		if(facultad == null) {
			response.put("mensaje",	 "La facultad con ID: ".concat(facultadId.toString()).concat(" no existe"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		try {
			gradosPorFacultad = this.gradoService.getGradosPorFacultad(facultadId);
		}catch(DataAccessException e) {
			response.put("mensaje", "Error al realizar la consulta en la base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR); 
		}
		
		if(gradosPorFacultad.isEmpty()) {
			response.put("mensaje",	 "La facultad con ID: ".concat(facultadId.toString()).concat(" no tiene grados disponibles"));
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND); 
		}
		
		return new ResponseEntity<Collection<Grado>>(gradosPorFacultad, HttpStatus.OK);
		
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
 

