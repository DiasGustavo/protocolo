package br.com.gerentedocumento.constante;

public enum CategoriaAto {
	consumo("consumo"),obras("obras"),servicopf("Servi�os Pessoa F�sica"),
	servicopj("Servi�o Pessoa Jur�dica"),diarias("Di�rias"),alugueispf("Alugu�is Pessoa F�sica"),
	alugueispj("Alugu�is Pessoa Jur�dica");
	
	private String categoria;
	
	private CategoriaAto (String categoria){
		this.categoria = categoria;
	}
	
	public String getCategoria(){
		return categoria;
	}
}
