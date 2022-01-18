package br.com.gerentedocumento.bean;

import java.sql.SQLException;
import java.util.Date;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import org.apache.commons.codec.digest.DigestUtils;

import br.com.gerentedocumento.dao.FuncionarioDAO;
import br.com.gerentedocumento.dao.OrgaoDAO;
import br.com.gerentedocumento.domain.Funcionario;
import br.com.gerentedocumento.domain.Orgao;
import br.com.gerentedocumento.util.FacesUtil;
import br.com.gerentedocumento.util.HibernateUtil;

@ManagedBean
@SessionScoped
public class AutenticacaoBean {

	private Funcionario funcionarioLogado;
	private Orgao orgaoLogado;

	public Funcionario getFuncionarioLogado() {
		if (funcionarioLogado == null) {
			funcionarioLogado = new Funcionario();
		}
		return funcionarioLogado;
	}

	public void setFuncionarioLogado(Funcionario funcionarioLogado) {
		if (orgaoLogado == null) {
			orgaoLogado = new Orgao();
		}
		this.funcionarioLogado = funcionarioLogado;
	}

	public Orgao getOrgaoLogado() {
		return orgaoLogado;
	}

	public void setOrgaoLogado(Orgao orgaoLogado) {
		this.orgaoLogado = orgaoLogado;
	}

	@SuppressWarnings("deprecation")
	public Date getPegaDataAtual() {
		Date date = new Date();
		date.setHours(0);
		date.setMinutes(0);
		date.setSeconds(0);

		return date;
	}

	public String autenticar() {
		try {
			FuncionarioDAO fdao = new FuncionarioDAO();
			funcionarioLogado = fdao.autenticar(funcionarioLogado.getLogin(),
					DigestUtils.md5Hex(funcionarioLogado.getSenha()));

			OrgaoDAO odao = new OrgaoDAO();
			
			orgaoLogado = odao
					.buscarPorRegistro(DigestUtils.md5Hex(funcionarioLogado.getOrgao().getCnpj() + funcionarioLogado.getOrgao().getNome()),getPegaDataAtual());
			
			if (orgaoLogado == null) {
				orgaoLogado = new Orgao();				
				orgaoLogado.setStatus("I");
				FacesUtil.addMsgInfo("Sistema apenas para Consulta!");				
			}

			if (funcionarioLogado == null) {
				FacesUtil.addMsgErro("login e/ou senha inv�lidos!");
				return null;
			} else {
				FacesUtil.addMsgInfo("Funcion�rio Logado com Sucesso!");
				return "/pages/principal.xhtml?faces-redirect=true";
			}

		} catch (RuntimeException ex) {
			FacesUtil.addMsgErro("Erro ao autenticar no sistema: " + ex.getMessage());
			return null;
		}
	}

	public String sair() {
		funcionarioLogado = null;
		try {
			HibernateUtil.getConexao().close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/pages/autenticacao.xhtml?faces-redirect=true";
	}
}
