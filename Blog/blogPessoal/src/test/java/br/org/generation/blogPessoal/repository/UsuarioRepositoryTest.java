package br.org.generation.blogPessoal.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import java.util.Optional;

import org.generation.blogPessoal.model.Usuario;
import org.generation.blogPessoal.repository.UsuarioRepository;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

	@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
	@TestInstance(TestInstance.Lifecycle.PER_CLASS)
	public class UsuarioRepositoryTest {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@BeforeAll
	void start() {
	
	usuarioRepository.save(new Usuario(0L, "Pedro García", "pedro@email.com", "161616"));
	
	usuarioRepository.save(new Usuario(0L, "Nicolas García", "nicolas@email.com", "141414"));
	
	usuarioRepository.save(new Usuario(0L, "Pablo García", "pablo@email.com", "303030"));
	
	usuarioRepository.save(new Usuario(0L, "Fernando Torres", "fernando@email.com", "191919"));
	
	}
	
	@Test
	@DisplayName("Retorna 1 usuário")
	public void deveRetornarUmUsuario() {
		
		Optional<Usuario> usuario = usuarioRepository.findByUsuario("pablo@email.com");
		assertTrue(usuario.get().getUsuario().equals("pablo@email.com"));
	}
	
	@Test
	@DisplayName("Retorna 3 usuários")
	public void deveRetornarTresUsuarios() {
		
		List<Usuario> listaDeUsuarios = usuarioRepository.findAllByNomeContainingIgnoreCase("García");
		assertEquals(3, listaDeUsuarios.size());
		assertTrue(listaDeUsuarios.get(0).getNome().equals("Pedro García"));
		assertTrue(listaDeUsuarios.get(1).getNome().equals("Nicolas García"));
		assertTrue(listaDeUsuarios.get(2).getNome().equals("Pablo García"));
	}		
}
