object castillo {
  method altura() = 20 
  var defensa = 150
  method recibirAtaque(potencia) {
    defensa = 0.max(defensa - potencia)
  }
}

object aurora {
  var estaViva = true  
  method altura() = 1
  method recibirAtaque(potencia) {
    if(potencia >= 10){
        estaViva = false
    }
  }
}

object tipa {
  var altura = 8
  method altura() = altura
  method crecer() {
    altura = altura + 1
  }
  method recibirAtaque(potencia) {}
}