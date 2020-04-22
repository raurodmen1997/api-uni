package com.uni.springboot.backend.apirest.models;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.validator.constraints.Range;

import validators.ValueEnum;



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
	
	@Range(min=1, max=18)
	@Column(nullable = false)
	private Double creditos;
	
	
	@Column(nullable = false)
	@ValueEnum(enumClass=TipoAsignatura.class)
	private String tipo;
	
	@Valid
	@ManyToOne(optional = false)
	@JoinColumn(name = "curso_id")
	private Curso curso;
	
	@Valid
	@ManyToOne(optional = false)
	@JoinColumn(name = "grado_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Grado grado;
	
	
	
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

	public Grado getGrado() {
		return grado;
	}

	public void setGrado(Grado grado) {
		this.grado = grado;
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

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
	
}
