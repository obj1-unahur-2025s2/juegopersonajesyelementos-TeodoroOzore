import armas.*
import elementos.*


object luisa {
  
}

object floki {
  var arma = ballesta
  method encontrar(elemento) {
    if(arma.estaCargada()){
        elemento.recibirAtaque(arma.potencia())
        arma.usar()
    }
  }
}

object mario {
  var valorRecolectado = 0
  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.valorOtorgado()
  }
}