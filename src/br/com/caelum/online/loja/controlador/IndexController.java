package br.com.caelum.online.loja.controlador;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

@Resource
public class IndexController {
	
	@Path("/ajuda")
	public void ajuda(){
		System.out.println("ajuda....");
		System.out.println("tste.................................");
	}
		
    @Path("/")
	public void root() {
		System.out.println("Meu sistema com vraptor");
	}

	@Path("/sobre")
	public void sobre(){
		System.out.println("sobre....");
	}
	
	
}
