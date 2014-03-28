package br.com.caelum.online.loja.dominio;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;

@Component
@SessionScoped
public class UsuarioLogado {

	private String Logado;

	public String getLogado() {
		return Logado;
	}

	public void setLogado(String logado) {
		Logado = logado;
	}
	
}
