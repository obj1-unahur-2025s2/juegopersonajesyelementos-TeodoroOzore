import armas.*
import elementos.*


object luisa {
    var personajeActivo = null
    method personajeActivo(unPersonaje) {
      personajeActivo = unPersonaje
    }
    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }
}

object floki {
    var arma = jabalina
    method encontrar(elemento) {
    if (arma.estaCargada()){
        arma.usar()
        elemento.recibirAtaque(arma.potencia())
    }
    else{
        arma = ballesta
    }
  }
}

object mario {
 var totalRecolectado = 0
 var ultimoElementoEncontrado = castillo
 method encontrar(elemento) {
   totalRecolectado = totalRecolectado + elemento.valorARecolectar()
   ultimoElementoEncontrado = elemento
 }
 method recolecto50OMas() = totalRecolectado >= 50
 method elementoEncontradoMide10MetrosOMas() = ultimoElementoEncontrado.altura() >= 10
 method esFeliz(){
   self.elementoEncontradoMide10MetrosOMas() or self.recolecto50OMas()
 }  
}