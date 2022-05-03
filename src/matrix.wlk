object neo{
	var energia = 100 
	
	method energia() = energia
	method esElElegido() = true
	method saltar() { energia = energia*0.5 }
	method vitalidad() = energia*0.1
}

object morfeo{
	var property vitalidad = 8
	var estaDescansado = true
	
	method esElElegido() = false
	method saltar(){
		estaDescansado = !estaDescansado;
		vitalidad = 0.max(vitalidad-1)
	}
	method estaDescansado() = estaDescansado
}

object trinity{
	
	method esElElegido() = false
	method vitalidad() = 0
	method saltar(){}
}
