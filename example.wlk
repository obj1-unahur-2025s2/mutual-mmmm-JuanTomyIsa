class Viajes{//{}
  const idiomas = new List()

  method agregarIdioma(unIdioma) {
    idiomas.add(unIdioma)
  }

  method implicaEsfuerzo() 

  method sirveParaBroncearse()

  method cuantosDiasLleva() 
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
}

class ExcursionesACiudadTropical inherits ExcursionACiudad{
  override method cuantosDiasLleva() = atracciones/2 + 1
  override method sirveParaBroncearse() = true 
}
  

class SalidaDeTrekking inherits Viajes{}