import remeras.*

class Pedido{
	var property cantRemeras
	var property modelo
	var property sucursal
	
	method precioBase(){
		return modelo.costo() * cantRemeras
	}
	
	method tieneDescuento(){
		return self.cantRemeras() >= sucursal.descuentoDesde()
	}
	
	method precio(){
		if(self.tieneDescuento()){
		return	self.precioBase() - (self.precioBase() * (modelo.porcentajeDescuento() / 100))
		}else{
		return	self.precioBase()
		}
	}

}

class Sucursal{
	var property pedidos
	var property descuentoDesde
	method totalFacturadoEnSucursal(){
		pedidos.sum{pedido=>pedido.precio()}
	}

	
}