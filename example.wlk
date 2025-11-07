class Viajes{//{}
  const idiomas = new List()

  method agregarIdioma(unIdioma) {
    idiomas.add(unIdioma)
  }

  method implicaEsfuerzo() 

  method sirveParaBroncearse()

  method cuantosDiasLleva() 

  method esInteresante() = idiomas.size() > 1
} 

class ViajeDePlaya inherits Viajes{
  const largoDePlaya 
  override method cuantosDiasLleva() = largoDePlaya / 500
  override method implicaEsfuerzo() = largoDePlaya > 1200
  override method sirveParaBroncearse() = true
}

class ExcursionACiudad inherits Viajes{
  const atracciones
  override method cuantosDiasLleva() = atracciones/2
  override method implicaEsfuerzo() = 5 >=atracciones>= 8
  override method sirveParaBroncearse() = false

  override method esInteresante() = super() or atracciones == 5

}

class ExcursionesACiudadTropical inherits ExcursionACiudad{
  override method cuantosDiasLleva() = atracciones/2 + 1
  override method sirveParaBroncearse() = true 
}
  

class SalidaDeTrekking inherits Viajes{
  const kilometros
  const diasDeSol
  override method cuantosDiasLleva() = kilometros/50
  override method implicaEsfuerzo() = kilometros>80
  override method sirveParaBroncearse() = 100>diasDeSol and kilometros>120 

  override method esInteresante() = super() and diasDeSol > 140
}