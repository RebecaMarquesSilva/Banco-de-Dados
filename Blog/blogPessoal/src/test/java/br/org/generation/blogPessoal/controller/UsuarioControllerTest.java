package br.org.generation.blogPessoal.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Optional;

import org.generation.blogPessoal.model.Usuario;
import org.generation.blogPessoal.service.UsuarioService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

	@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
	@TestInstance(TestInstance.Lifecycle.PER_CLASS)
	@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
	public class UsuarioControllerTest {

	@Autowired
	private TestRestTemplate testRestTemplate;
	
	@Autowired
	private UsuarioService usuarioService;
		
	@Test
	@Order(1)
	@DisplayName("Cadastrar um Usuário")
	public void deveCriarUmUsuario() {
	
		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(new Usuario
				(0L, "Fernando Torres", "fernando@email.com", "191919"));
		
		ResponseEntity<Usuario> resposta = testRestTemplate
				.exchange("/usuarios/cadastrar", HttpMethod.POST, requisicao, Usuario.class);
		
		assertEquals(HttpStatus.CREATED, resposta.getStatusCode());
		assertEquals(requisicao.getBody().getNome(), resposta.getBody().getNome());
		assertEquals(requisicao.getBody().getUsuario(), resposta.getBody().getUsuario());
	}
		
	@Test
	@Order(2)
	@DisplayName("Não Deve Permitir a Duplicação do Usuário")
	public void naoDeveDuplicarUsuario() {	
		
		usuarioService.cadastrarUsuario(new Usuario
			(0L, "Maria Torres", "maria@email.com", "101010"));

		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>
			(new Usuario(0L, "Maria Torres", "maria@email.com", "101010"));
		
		ResponseEntity<Usuario> resposta = testRestTemplate
			.exchange("/usuarios/cadastrar", HttpMethod.POST, requisicao, Usuario.class);
		
		assertEquals(HttpStatus.BAD_REQUEST, resposta.getStatusCode());	
	}
	
	@Test
	@Order(3)
	@DisplayName("Alterar um Usuário")
	public void deveAtualizarUmUsuario() {
		
		//
		Optional<Usuario> usuarioCreate = Optional.of(usuarioService.cadastrarUsuario
				(new Usuario(0L, "Juliana Alves", "juliana.alves@email.com", "juliana123")));
		
		Usuario usuarioUpdate = new Usuario(usuarioCreate.get().getId(),
				"Juliana alba", "juliana.alba@email.com", "juliana123");
		
		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(usuarioUpdate);
		
		ResponseEntity<Usuario> resposta = testRestTemplate
				.withBasicAuth("root", "root")
				.exchange("/usuarios/atualizar", HttpMethod.PUT, requisicao, Usuario.class);
		
		assertEquals(HttpStatus.OK, resposta.getStatusCode());
		assertEquals(usuarioUpdate.getNome(), resposta.getBody().getNome());
		assertEquals(usuarioUpdate.getUsuario(), resposta.getBody().getUsuario());	
	}
		
	@Test
	@Order(4)
	@DisplayName("Listar Todos os Usuários")
	public void deveMostrarTodosUsuarios() {
		
	usuarioService.cadastrarUsuario(new Usuario(0L, 
			"Carla Alves", "carla.alves@email.com", "carla123"));
	
	usuarioService.cadastrarUsuario(new Usuario(0L, 
			"Carolina Alves", "carolina.alves@email.com", "carolina123"));
		
	ResponseEntity<String> resposta = testRestTemplate
			.withBasicAuth("root", "root")
			.exchange("/usuarios/all", HttpMethod.GET, null, String.class);
	
		assertEquals(HttpStatus.OK, resposta.getStatusCode());
	}
}
