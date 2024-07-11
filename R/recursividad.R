##########################################################
##########             Clase 42                ###########
##########    Por: Carlos Mamallacta           ###########
##########    Fecha: 11/07/24                  ###########
##########################################################
# Definición de la función auxiliar para realizar la multiplicación por sumas
suma <- function(a, b) {
  resultado <- 0
  for (i in 1:b) {
    resultado <- resultado + a
  }
  return(resultado)
}
# Definición de la función recursiva para calcular el factorial
factorial_suma <- function(n) {
  # Caso base: si n es 0 o 1, el factorial es 1
  if (n == 0 || n == 1) {
    return(1)
  } else {
    # Llamada recursiva para calcular el factorial
    return(suma(n, factorial_suma(n - 1)))
  }
}

#Multiplicación por sumas sucesivas
sum_suce <- function(b,a){
  if(b==0){
    return(0)
  }else{
    return(a+sum_suce(b-1,a))
  }
}

#Potencia por multiplicaciones sucesivas
potencia <- function(b,exp1){
  if(exp1==0){
    return(1)
  }else{
    return(sum_suce(b,potencia(b,exp1-1)))
  }
}
