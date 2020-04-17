package com.uni.springboot.backend.apirest.models;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;



@Entity(name = "asignaturas")
public class Asignatura implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	@Column(nullable = false)
	private String nombre;
	
	@NotEmpty
	@Column(nullable = false)
	private String codigo;
	
	@NotEmpty
	@Column(nullable = false)
	private Double creditos;
	
	@Column(nullable = false)
	private TipoAsignatura tipo;
	
	@Valid
	@ManyToOne(optional = false)
	@JoinColumn(name = "curso_id")
	private Curso curso;
	
	@Valid
	@ManyToMany
	private Collection<Grado> grados;
	
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Collection<Grado> getGrados() {
		return grados;
	}

	public void setGrados(Collection<Grado> grados) {
		this.grados = grados;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public Double getCreditos() {
		return creditos;
	}

	public void setCreditos(Double creditos) {
		this.creditos = creditos;
	}

	public TipoAsignatura getTipo() {
		return tipo;
	}

	public void setTipo(TipoAsignatura tipo) {
		this.tipo = tipo;
	}
	
	
	
}
