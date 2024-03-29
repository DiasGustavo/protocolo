package br.com.gerentedocumento.util;

import java.io.IOException;
import java.sql.Connection;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

public class GeraNotaTecnica {
	@SuppressWarnings("deprecation")
	public void geradorDeNota(String caminho, Map<String, Object> parametros) {
		Connection conexao = HibernateUtil.getConexao();
		try {
			// contexto do relat�rio
			FacesContext context = FacesContext.getCurrentInstance();
			ServletContext servletContext = (ServletContext) context.getExternalContext().getContext();
			String caminhoRelatorio = servletContext.getRealPath(caminho);
			
			// Defini��o do tipo de arquivos
			HttpServletResponse response = (HttpServletResponse) context.getExternalContext().getResponse();
			response.setContentType("application/pdf");
			//abre o relat�rio no pr�prio navegador
			String numero = (String)parametros.get("NUM_NOTA");
			response.addHeader("Content-disposition", "inline; filename=\"parecer-"+numero+".pdf\"");
			
			// compilando o relat�rio
			JasperPrint relatorio = JasperFillManager.fillReport(caminhoRelatorio, parametros, conexao);
			JasperExportManager.exportReportToPdfStream(relatorio, response.getOutputStream());
			
			// finalizando o contexto
			context.getApplication().getStateManager().saveView(context);
			context.renderResponse();
			context.responseComplete();
			
		} catch (JRException ex) {
			FacesUtil.addMsgErro("Erro JRE ao gerar o relat�rio " + ex.getMessage());
		} catch (IOException ex) {
			FacesUtil.addMsgErro("Erro I/O ao gerar o relat�rio " + ex.getMessage());
		}
	}
}
