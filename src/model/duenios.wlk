
object andy {
	var juguetes = []
	var felicidad = 170
	
	method jugarConTodos() {
		juguetes.forEach({ juguete => juguete.jugar(self)}) //V1
//	felicidad += juguetes.sum({ juguete => juguete.felicidadAlJugar(self)}) //V2
	}
	method felicidad() {
		return felicidad 
	}
	method aumentarFelicidad(cant){
		felicidad += cant
	}
}
