# Ejercicio - Analizando operadores en Ruby
Para este ejercicio hay que documentarse acerca de la estructura condicional if, operadores ternarios en ruby y métodos para convertir un string a tipo entero.
Analiza el código y OJO sin ejecutarlo coloca el resultado en el lugar correspondiente:

number = 10
valor = ""
if ((number * 10) / 100) == (24 + 24 - number - 37)
  valor = "Good"
else
  valor = "Bad"
end

valor == "Good"
#=> Resultado de la comparación (true o false)
#Valor es igual a "" un string vacio. No se le indico que cambie su contenido

# -> && -> AND --> true && true --> (2+4) && (4+4) --> false && true
# --> || --> OR --> true || false


comparacion1 = (10 < 70 || true) && (true || true)  #ok true
comparacion2 = !(((4 ** 4 == 3 * 3) || !true) && (true && true))
# (256 == 9 || false &&  true)  --> (false && true) --> !(false) --> true
comparacion3 = comparacion1 == comparacion2   # true
comparacion3 == false #--> true == false --> false
#=> Resultado de la comparación (true o false)
#comparacion3 --> true


operacion = '70'.to_i == 70? "true" : "false"
operacion == true
#=> Resultado de la comparación (true o false)

((number * 10) / 100) == (24 + 24 - number - 37)? "good" : "hello2"
if ((number * 10) / 100) == (24 + 24 - number - 37)
  "good"
else
  "hello2"
end


a = 10
b = 5
valor = ""

if a + 10 <= b
  valor = "Comparación <= | a es Menor o Igual que b!"
elsif a + 10 >= b + 16
  valor = "Comparación >= | a es Mayor o Igual que b!"
elsif a + 1 == b
  valor = "Comparación == | a es IGUAL que b!"
else
  valor = "NINGUNO!"
end

valor == "Comparación == | a es IGUAL que b!"
#=> Resultado de la comparación (true o false)

# valor --> "NINGUNO!" --> false

