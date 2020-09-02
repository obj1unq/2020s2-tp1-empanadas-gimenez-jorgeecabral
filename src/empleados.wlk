object gimenez {
	var fondo = 300000

	method fondo() {
		return fondo
	}
	method pagarSueldo (empleado) {
		empleado.recibirSueldo()
		fondo = fondo - (empleado.sueldo())

	}
	
}

object galvan {
	var sueldoFijo = 15000
	var sueldoCobrado = 0
	
	method sueldo() {
		return sueldoFijo
	}
	method recibirSueldo() {
		sueldoCobrado = sueldoFijo
	}
	method aumentarSueldo(aumento) {
		sueldoFijo = aumento
	}
}

object baigorria {
	var sueldo = 0
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo() {
		return sueldo
	}
	method totalCobrado() {
		return totalCobrado
	}
	method empanadasVendidas() {
		return empanadasVendidas
	}
	method vender(cant) {
		empanadasVendidas = empanadasVendidas + cant
		self.actualizarSueldo()
	}
	
	method actualizarSueldo() {
		sueldo = empanadasVendidas * 15
	} 

	method recibirSueldo() {
		totalCobrado = totalCobrado + sueldo
		empanadasVendidas = 0
	}
}