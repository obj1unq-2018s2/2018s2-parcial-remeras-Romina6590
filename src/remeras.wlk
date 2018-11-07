class Remera{
	var property talle
	var property color
	
}

class Lisa inherits Remera{
	method costoPorTalle(){
		if (talle.between(32,40)){
			return 80
		}else{
			return 100
		}
	}
	method costo(){
		if (#{"blanco","negro","gris"}.contains(color)){
			return self.costoPorTalle()
		}else{
			return self.costoPorTalle() + self.costoPorTalle() * 0.10
		}
	}
	
	method porcentajeDescuento(){
		return 10
	}
	
}

class Bordada inherits Lisa{
	var property cantColores
	override method costo(){
		if (cantColores == 1){
			return super() + 20
		}else{
			return super() + (10 * cantColores)
		}
	}
    override method porcentajeDescuento(){
		return 2
	}
	
}

class Sublimada inherits Lisa{
	var property altoDibujo
	var property anchoDibujo
	var property derechosAutor = 0
	
	override method costo(){
		return super() + (altoDibujo * anchoDibujo * 0.50) + derechosAutor
	}
	
	override method porcentajeDescuento(){
		if (derechosAutor > 0){
			return 20
		}else{
			return 0
		}
	}
}