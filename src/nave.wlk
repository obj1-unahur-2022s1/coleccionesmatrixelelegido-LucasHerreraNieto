import matrix.*

object nave {
	var pasajeros = []
	
	method agregarPasajero(unPasajero){
		pasajeros.add(unPasajero)
	}
	method sacarPasajero(unPasajero){
		pasajeros.remove(unPasajero)
	}
	method cantidadPasajeros() = pasajeros.size()
	method pasajeroConMayorVitalidad() = pasajeros.max({p=>p.vitalidad()})
	method estaElElegido() = pasajeros.any({p=>p.esElElegido()})
	method estaEquilibradaVitalidad() = self.pasajeroConMayorVitalidad().vitalidad() >= self.pasajeroConMenorVitalidad().vitalidad()*2 
	method choqueNave(){
		pasajeros.forEach({p=>p.saltar()})
		pasajeros.clear()
	}
	method pasajeroConMenorVitalidad() = pasajeros.min({p=>p.vitalidad()})
	method noElegido() = pasajeros.filter({p=>!p.esElElegido()})
	method aceleraNave(){
		self.noElegido().forEach({p=>p.saltar()})	
	}
}
