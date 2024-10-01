object maquina {

  const property produccion = [43, 18, 49, 62, 33, 39]

  method algunDiaSeProdujo(cantidad){
    return produccion.any({prod => prod == cantidad})
  }

  // Encontrar el maximo.
  method maximoValorDeProduccion(){
    return produccion.max()
    // Solo sirve con numero el MAX() usar el MAX({closure}) para tratar objetos.
  }

  method valoresDeProduccionPares(){
    return produccion.filter({prod => prod.even()})
  }

  method produccionEsAcotada(n1, n2){
    return produccion.all({p => p.between(n1, n2)  })
  }

  method produccionesSuperioresA(cuanto){
    return produccion.filter({prod => prod > cuanto })
  }

  method produccionesSumando(n){
    return produccion.map({prod => prod + n})
  }

  method totalProducido(){
    return produccion.sum()
  }

  method ultimoValorDeProduccion(){
    return produccion.last()
  }
  // ME pide las cantidades que hay , no lo objetos/valores
  method cantidadProduccionesMayorALaPrimera(){
    const primerValor = produccion.first()
    return produccion.count({ prod => prod > primerValor })

  }
}