package br.com.caelum.online.loja.controlador;

import br.com.caelum.online.loja.dominio.UsuarioLogado;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class LoginController {

	private UsuarioLogado usuariologado;
	private Result result;

	public LoginController(UsuarioLogado usuariologado, Result result) {
		this.usuariologado = usuariologado;
		this.result = result;
	}
	
	public void loga(){
		usuariologado.setLogado("costarog");
	}
	
	public void exibe(){
	    result.include("usuario", usuariologado.getLogado());
	}
}
