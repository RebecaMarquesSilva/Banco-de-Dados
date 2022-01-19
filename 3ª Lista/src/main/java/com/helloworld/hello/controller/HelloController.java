package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/atividade01")
	public String atividade01() {
		return "Para essa atividade usei as seguintes habilidades "
				+ "e mentalidades: Persistência, Mentalidade de "
				+ "Crescimento e Atenção aos Detalhes.";
	}
	
	@GetMapping("/atividade02")
	public String atividade02() {
		return "Para essa semana tenho os objetivos de praticar "
				+ "banco de dados, compreender e praticar SpringBoot "
				+ "e praticar o Elevator Pitch.";
	}
	
}
