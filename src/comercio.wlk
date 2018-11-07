import remeras.*
import pedidosysucursales.*

class Comercio{
	var property sucursales
	method registrar(pedido){
	    return	sucursales.find{sucursal=>sucursal == pedido.sucursal()}.pedido().add(pedido)
		
	}
	
	method totalFacturado(){
		return sucursales.sum{sucursal => sucursal.totalFacturadoEnSucursal()}
	}
	
	method facturadoEn(sucursal){
		return sucursal.totalFacturadoEnSucursal()
	}
	
	
}