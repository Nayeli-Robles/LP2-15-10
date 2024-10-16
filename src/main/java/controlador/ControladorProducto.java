package controlador;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoImp.TblProductoImp;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
import model.TblProducto;



/**
 * Servlet implementation class ControladorProducto
 */
public class ControladorProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//redireccionamos al formulario
		request.getRequestDispatcher("/FormRegistrarProducto.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nompro=request.getParameter("nonproducto");
		Double prepro=Double.parseDouble(request.getParameter("preproducto"));
		Double canpro=Double.parseDouble(request.getParameter("cantproducto"));
		Double totalpro=prepro*canpro;
		String codbapro=request.getParameter("codbarrasproducto");
		String nrolotepro=request.getParameter("nroloteproducto");
		String fecha=request.getParameter("fechavenproducto");
		Date fechavenpro=new Date(0);
		Date fechasql= new Date(fechavenpro.getTime());
		
		TblProducto tblProducto=new TblProducto();
		TblProductoImp tblproimp=new TblProductoImp();
		
		tblProducto.setNomprod(nompro);
		tblProducto.setPrecio(prepro);
		tblProducto.setCantidad(canpro);
		tblProducto.setTotal(totalpro);
		tblProducto.setCodbarras(codbapro);
		tblProducto.setNrolote(nrolotepro);
		tblProducto.setFechaven(fechasql);
		
		tblproimp.RegistrarProducto(tblProducto);
		
		request.getRequestDispatcher("/MenuPrincipal.jsp").forward(request, response);
		
	}

}
