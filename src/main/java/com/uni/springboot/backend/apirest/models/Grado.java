package com.uni.springboot.backend.apirest.models;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.validator.constraints.Range;


@Entity(name = "grados")
public class Grado implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	@Column(nullable = false)
	private String nombre;
	
	@Valid
	@ManyToOne(optional=false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "facultad_id")
	private Facultad facultad;
	
	@Range(min=1, max=6)
	@Column(nullable = false)
	private Integer numerocursos;
	
	
	public int getNumerocursos() {
		return numerocursos;
	}

	public void setNumerocursos(Integer numerocursos) {
		this.numerocursos = numerocursos;
	}

	public Facultad getFacultad() {
		return facultad;
	}

	public void setFacultad(Facultad facultad) {
		this.facultad = facultad;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	private static final long serialVersionUID = 1L;
	

}	
