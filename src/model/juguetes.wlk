object woody {
	var frases = #{"hay una serpiente en mi bota", "alguien enveneno el abrevadero", "corre como el viento Tiro al Blanco"}
	method tirarDelCordel(){
		return frases.anyOne()
	}
	method frases() {
		return frases 
	}
	method hacerseElGalan() {
		frases.add("Cuando te miro me derretís") 
	}
}

object buzz {
	var energia = 100
	method volar(){
		energia = energia / 2
	}
	method energia() {
		return energia 
	}
	method tirarRayo(cantRayos) {
		energia = energia + cantRayos * 20
	}
}

object rex {
	var potenciador = 1
	var companiero = woody
	
	method jugarVideoJuegos(){
		potenciador = potenciador * 2
	}
	
	method cambiarDeCompaniero(kumpa){
		companiero = kumpa
	}
}