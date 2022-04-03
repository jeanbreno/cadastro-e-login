package br.edu.infnet.cadastro.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.infnet.cadastro.model.domain.Usuario;
import br.edu.infnet.cadastro.model.service.UsuarioService;

@SessionAttributes("user")
@Controller
public class AcessoController {
	
	@Autowired
	private UsuarioService usuarioService;

	//@GetMapping(value = "/home")
	//public String telaHome() {
	//	return "home";
	//}
	
	@GetMapping(value = "/")
	public String telaLogin() {
		return "login";
	}
	
	//@GetMapping(value = "/cadastro")
	//public String telaCadastro() {
	//	return "cadastro";
	//}
	
	@GetMapping(value = "/logout")
	public String logout(SessionStatus status, HttpSession session) {
		
		status.setComplete();
		session.removeAttribute("user");
		
		return "redirect:/";		
	}

	@PostMapping(value = "/login")
	public String validar(Model model, @RequestParam String email, @RequestParam String senha){
		
		//request.getParameter("email");
		//request.getParameter("senha");
		//Model model, @RequestParam String email, @RequestParam String senha)
		Usuario usuario = usuarioService.autenticacao(email, senha);

		if(usuario != null) {
			model.addAttribute("user", usuario);
			//request.getRequestDispatcher("produto/lista.jsp").forward(request, response);
			//return "redirect:/";
			//return telaHome();
			return "redirect:https://github.com/jeanbreno/cadastro-e-login";
		} else {
			model.addAttribute("credencialErro", "Credenciais incorretas!");

			//return telaLogin();
			return telaLogin();
		}
		//return telaHome();
	}
}