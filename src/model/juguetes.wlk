object woody {
	var frases = #{"hay una serpiente en mi bota", "alguien enveneno el abrevadero", "corre como el viento Tiro al Blanco"}
	var estadoPintura = 100
	
	method tirarDelCordel(){
		return frases.anyOne()
	}
	method frases() {
		return frases 
	}
	method hacerseElGalan() {
		frases.add("Cuando te miro me derretís") 
	}
	
	method jugar(duenio) {
		self.desgastar()
		duenio.aumentarFelicidad(self.cantLetrasDeFrases())
	}
	method cantLetrasDeFrases() {
		return frases.sum({frase => frase.size()}) 
	}
	method desgastar() {
		if(estadoPintura >= 5) {
			estadoPintura -= 5
		} else {
			self.error("Woody no da más, chabón")
		}
	}
	method estadoPintura() {
		return estadoPintura 
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
	method jugar(duenio){
		self.seguidillaJugar()
		duenio.aumentarFelicidad(energia * 2)
	}
	method seguidillaJugar() {
		self.volar()
		self.tirarRayo(10)
		self.volar()
		self.tirarRayo(1) 
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
	method jugar(duenio){
		
	}
}