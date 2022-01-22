package br.com.gerentedocumento.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "tbl_controle_registro")
@NamedQueries({
	@NamedQuery(name = "controleRegistro.buscarPorDescricao", query = "SELECT controleRegistro FROM ControleRegistro controleRegistro WHERE controleRegistro.descricao = :descricao"),
	@NamedQuery(name = "controleRegistro.listar", query = "SELECT controleRegistro FROM ControleRegistro controleRegistro"),
	@NamedQuery(name = "controleRegistro.buscarPorCodigo", query = "SELECT controleRegistro FROM ControleRegistro controleRegistro WHERE controleRegistro.id = :codigo")
})
public class ControleRegistro {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "cod_controle")
	private Long id;
	
	@Column(name = "descricao")
	private String descricao;
	
	@Column(name = "valor")
	private int valor;
	
	@Temporal(value =TemporalType.DATE)
	@Column(name = "dt_ultimo_dia")
	private Date dataUltimoDiaAno;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getValor() {
		return valor;
	}

	public void setValor(int valor) {
		this.valor = valor;
	}

	public Date getDataUltimoDiaAno() {
		return dataUltimoDiaAno;
	}

	public void setDataUltimoDiaAno(Date dataUltimoDiaAno) {
		this.dataUltimoDiaAno = dataUltimoDiaAno;
	}

	@Override
	public String toString() {
		return "ControleRegistro [id=" + id + ", descricao=" + descricao + ", valor=" + valor + "]";
	}
	
}
