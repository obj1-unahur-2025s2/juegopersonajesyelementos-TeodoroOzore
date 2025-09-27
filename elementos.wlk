object castillo {
  method altura() = 20 
  var defensa = 150
  method recibirAtaque(potencia) {
    defensa = 0.max(defensa - potencia)
  }
  method recibirTrabajo(){
    defensa = 200.min(defensa + 20)
  }
  method valorARecolectar() = defensa / 5
}

object aurora {
  var estaViva = true  
  method altura() = 1
  method recibirAtaque(potencia) {
    if(potencia >= 10){
        estaViva = false
    }
  }
  method estaViva() = estaViva
  method recibirTrabajo() {}
  method valorARecolectar() = 15
}

object tipa {
  var altura = 8
  method altura() = altura
  method recibirAtaque(potencia) {}
  method recibirTrabajo() {
    altura = altura + 1
  }
  method valorARecolectar() = altura * 2
}