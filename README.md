# Operadores-En-Ruby

Un operador es un símbolo para realizar una operación específica en variables y/o constantes. Son de tres tipos: aritméticos, relacionales y lógicos.

Operadores aritméticos
Permiten realizar operaciones matemáticas entre variables y/o valores.
Precedencia de operadores:
La siguiente lista define el orden prioritario de precedencia de los operadores para Ruby:

----------- | --------------------------------------
()		Paréntesis
**		Exponencial
*, /, % 	Multiplicación, división y módulo
+, - 		Suma y resta
----------- | --------------------------------------


Hay que considerar lo siguiente:

Todas las expresiones entre paréntesis se evalúan primero.
Las expresiones con paréntesis anidados se evalúan de adentro hacia afuera, el paréntesis más interno se evalúa primero.
Los operadores en una misma expresión con igual nivel de prioridad se evalúan de izquierda a derecha.

Algunos ejemplos:

#Exponencial
7 ** 3

#Multiplicación
8 * 4

#División
5 / 3

#Módulo
5 % 3

#Suma
5 + 9

#Resta
7 - 4


Una ejemplo de expresión aritmética con varias operaciones:

>>> 1 * 2 + 5 / 4 ** 2
2


En el caso anterior primero se realiza la operación exponencial 4 ** 2 que sería 16, dado que la multiplicación y la división tienen el mismo nivel de prioridad, se realizaría la operación de izquierda a derecha, primero la multiplicación 1 * 2 que es igual a 2 y después la división 5 / 16 que es igual a 0. Finalmente se realiza la suma 2 + 0 que da como resultado 2.
Es una buena práctica que cuando se programe una expresión aritmética hay que tener en cuenta el manejo de prioridades en cada uno de los operadores matemáticos. Es necesario agrupar por medio de paréntesis cada operación según la fórmula original que se esté usando.

>>> (1 * 2) + (5 / (4 ** 2))
2


Es importante como se usan los paréntesis para no afectar la fórmula original que se esté aplicando:

>>> (1 * 2) + (5 / 4) ** 2
3



Operadores relacionales
Es una comparación entre valores, el resultado de expresiones que usan operadores relacionales es un valor booleano (verdadero o falso / true o false).

----------- | --------------------
==	    | Equal to
!=          | Not equal to
<           | Less than
>           | Greater than
<=          | Less than or equal to
>=          | Greater than or equal to
----------- | --------------------


Algunos ejemplos:

100 != 100
#=> false

-8 <= -8
#=> true

-55 < -100
#=> false

1000 == 1000
#=> true



Operadores lógicos
Se utilizan para comparar dos expresiones y devolver un resultado booleano (verdadero o falso).

----------- | ----------------
&&          |     AND
||          |     OR
!           |     NOT
----------- | ----------------



Operador lógico && (AND)

true  && true    # => true
true  && false   # => false
false && true    # => false
false && false   # => false



Operador lógico || (OR)

true  || true      # => true
true  || false     # => true
false || true      # => true
false || false     # => false



Operador lógico ! (NOT)

!true     # => false
!false    # => true


Algunos ejemplos:

modelo = 2018
auto = "Audi"

if modelo >= 2018 && auto == "Audi"
  puts "Nice car Audi"
end



a = 30
b = 10

(a > b || b < a)? "b es menor que a" : "a es menor que b"

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



comparacion1 = (10 < 70 || true) && (true || true)
comparacion2 = !(((4 ** 4 == 3 * 3) || !true) && (true && true))
comparacion3 = comparacion1 == comparacion2
comparacion3 == false
#=> Resultado de la comparación (true o false)



operacion = '70'.to_i == 70? "true" : "false"
operacion == true
#=> Resultado de la comparación (true o false)



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
