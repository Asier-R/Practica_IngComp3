# Practica_IngComp3
Practica de ingenieria de computadores 3

INGENIERÍA DE COMPUTADORES 3
Trabajo Práctico - Convocatoria ordinaria 2023
INSTRUCCIONES
– El trabajo práctico debe realizarse de manera individual. No puede realizarse
en grupo. Por ello, se penalizará cualquier uso compartido de las
soluciones propuestas y de los códigos programados.
– El trabajo debe entregarse a través del curso virtual de la asignatura en la
plataforma Alf.
– La fecha límite de entrega es el día 16 de abril.
– El alumno debe entregar un fichero comprimido, en formato zip o tar, que
contenga:
◦ Unamemoria en la cual explique la solución a los ejercicios, incluyendo
los listados documentados del código VHDL desarrollado. Este documento
deberá estar en formato pdf.
◦ Los ficheros del código VHDL solución a los ejercicios.
El nombre del fichero comprimido debe ser la concatenación de los apellidos
y nombre del alumno. Por ejemplo, GomezMartinLuisa.zip
INGENIERÍA DE COMPUTADORES 3
CRITERIOS DE EVALUACIÓN DEL TRABAJO
– Para que el trabajo pueda ser corregido, es imprescindible que el alumno
entregue dentro del plazo establecido un fichero comprimido que contenga
tanto lamemoria en formato pdf, como los ficheros fuente del código VHDL
de los ejercicios que haya realizado.
– La memoria ha de incluir el código VHDL de los ejercicios que haya realizado
así como capturas de pantalla de las simulaciones realizadas.
– El trabajo se compone de 2 ejercicios con varios apartados. En el enunciado
se indica la puntuación de cada apartado.
– Para aprobar el trabajo es necesario que la suma de la nota obtenida en los
dos ejercicios sea igual o mayor que 5.
– Si el código VHDL solución de un apartado tiene uno o varios errores de
compilación, o no tiene la funcionalidad pedida, dicho apartado se valorará
con cero puntos.
– Si el código solución de un apartado compila sin errores y tiene la funcionalidad
pedida, la puntuación en dicho apartado será al menos el 80% de
la nota del apartado.
– Se valorará positivamente la adecuada documentación del código, así como
la presentación y calidad de las explicaciones proporcionadas en la memoria.
2 Dpto. de Informática y Automática, UNED
TRABAJO PRÁCTICO - CONVOCATORIA ORDINARIA 2023
PROCEDIMIENTO DE EVALUACIÓN EN ESTA ASIGNATURA
Para aprobar la asignatura es necesario aprobar el trabajo y aprobar el examen.
Plantearemos un trabajo para la convocatoria ordinaria (junio) y otro diferente
para la convocatoria extraordinaria (septiembre). Este trabajo que está leyendo
corresponde a la convocatoria ordinaria de 2023.
La nota obtenida en la convocatoria ordinaria en el trabajo y en el examen se
guarda para la convocatoria extraordinaria. Es decir:
– Si un alumno aprueba el trabajo de la convocatoria ordinaria y no aprueba el
examen, se le guarda la nota del trabajo para la convocatoria extraordinaria.
Es decir, no debe hacer el trabajo de la convocatoria extraordinaria.
– Si un alumno no entrega o suspende el trabajo en convocatoria ordinaria,
pero sí aprueba el examen en convocatoria ordinaria, entonces se le guarda
la nota del examen para la convocatoria extraordinaria, debiendo aprobar
el trabajo de la convocatoria extraordinaria para superar la asignatura.
La nota del trabajo y del examen no se guarda de un curso para otro.
Dpto. de Informática y Automática, UNED 3
INGENIERÍA DE COMPUTADORES 3
EJERCICIO 1
A continuación se muestran dos funciones lógicas F y G, que dependen de las
cuatro variables A, B, C y D de la forma mostrada a continuación:
F = A B C + C D
G = A B C'
1.a) (0.25 puntos) Escriba en VHDL la entity de un circuito que implemente las
dos funciones lógicas. Es decir, que tenga cuatro entradas A, B, C y D, y dos
salidas F y G. Emplee el convenio de especificar en primer lugar las señales
de salida del circuito y posteriormente las señales de entrada.
1.b) (0.75 puntos) Escriba en VHDL la architecture que describa el comportamiento
de un circuito que implemente las dos funciones lógicas.
1.c) (0.5 puntos) Dibuje el diagrama al nivel de puertas lógicas de un circuito
que implemente estas dos funciones (no es necesario simplificar dichas funciones).
Emplee para ello puertas lógicas AND y OR de dos entradas, y una
puerta NOT. A continuación, escriba en VHDL la entity y la architecture
de cada una de las puertas lógicas que componen el diagrama que acaba de
dibujar.
1.d) (1 punto) Escriba en VHDL una architecture que describa la estructura del
circuito que ha dibujado, instanciando y conectando las puertas lógicas que
ha diseñado anteriormente.
1.e) (1 punto) Escriba en VHDL un banco de pruebas que permita visualizar,
para todos los posibles valores de las entradas, las salidas de los circuitos diseñados
en los Apartados 1.b y 1.d. Compruebe mediante inspección visual
que los dos diseños funcionan correctamente. Incluya en lamemoria los dos
cronogramas obtenidos al realizar la simulación del banco de pruebas con
los circuitos diseñados en los Apartados 1.b y 1.d.
4 Dpto. de Informática y Automática, UNED
TRABAJO PRÁCTICO - CONVOCATORIA ORDINARIA 2023
EJERCICIO 2
Se quiere programar en VHDL un circuito combinacional que realiza la suma o la
resta (dependiendo del valor de una señal de control) de dos número binarios con
signo (representados en complemento a 2). El circuito tiene las siguientes señales
de entrada: los operandos de 8 bits a y b, y una señal de entrada de un bit llamada
ctrl. El circuito tiene la siguiente señal de salida: el resultado de 8 bits y.
El valor de la señal ctrl especifica la operación deseada. Si el valor de ctrl
es '0', el valor de la señal de salida es el resultado de realizar la operación suma
sobre los dos operandos de entrada. Por el contrario, si el valor de la señal ctrl
es '1', el valor de la señal de salida y es el resultado de realizar la operación de
resta a-b.
2.a) (0.25 puntos) Escriba en VHDL la entity del circuito combinacional descrito
anteriormente. Los nombres de los puertos de la entity deber ser losmismos
que se han especificado para las señales de entrada y salida del circuito.
Emplee el convenio de especificar en primer lugar las señales de salida del
circuito y posteriormente las señales de entrada.
2.b) (0.75 puntos) Escriba en VHDL la architecture que describe el comportamiento
del circuito combinacional empleando solo sentencias de asignación
concurrentes, que pueden ser simples y/o condicionales. Además, emplee
los operadores aritméticos suma y resta definidos para los tipos de dato
signed.
En el diseño únicamente pueden emplearse los dos siguientes paquetes de
la librería IEEE:
IEEE.std_logic_1164
IEEE.numeric_std
2.c) (3 puntos) Escriba en VHDL la architecture que describe el comportamiento
del circuito combinacional empleando solo sentencias de asignación concurrentes,
que pueden ser simples y/o condicionales. En este diseño no se
puede emplear el operador aritmético resta, pudiendo únicamente emplear
el operador aritmético suma definido para los tipos de dato signed. Para
realizar este diseño, tenga en cuenta que en la representación en complemente
a dos de un número, la resta a − b puede calcularse indirectamente
como a +¯b + 1, siendo ¯b el resultado de invertir bit a bit el operando b. Esto
nos va a permitir realizar el diseño sin emplear un bloque restador.
Dpto. de Informática y Automática, UNED 5
INGENIERÍA DE COMPUTADORES 3
En el diseño únicamente pueden emplearse los dos siguientes paquetes de
la librería IEEE:
IEEE.std_logic_1164
IEEE.numeric_std
2.d) (2.5 puntos) Programe en VHDL un banco de pruebas que testee los circuitos
diseñados en los Apartados 2.b y 2.c para los siguientes conjuntos de
valores de las señales de entrada:
– Conjunto 1: a = "00000000", b = "00000000", ctrl = '0'
– Conjunto 2: a = "00000000", b = "00000000", ctrl = '1'
– Conjunto 3: a = "00000011", b = "00000001", ctrl = '0'
– Conjunto 4: a = "00000011", b = "00000001", ctrl = '1'
– Conjunto 5: a = "10001000", b = "00010010", ctrl = '0'
– Conjunto 6: a = "10001000", b = "00010010", ctrl = '1'
– Conjunto 7: a = "11111111", b = "00000001", ctrl = '0'
– Conjunto 8: a = "11111111", b = "00000001", ctrl = '1'
El banco de pruebas debe comparar las salidas de la UUT con las salidas
esperadas, mostrando el correspondiente mensaje de error en caso de que
las salidas obtenidas de laUUT no correspondan con las esperadas. El banco
de pruebas debe mostrar al final del test un mensaje con el número total de
errores detectados.
Realice la simulación del banco de pruebas siendo los circuitos a probar los
diseños de los Apartados 2.b y 2.c. Incluya en la memoria los dos cronogramas
obtenidos al realizar la simulación del banco de pruebas de los dos
circuitos diseñado en los Apartados 2.b y 2.c.
6 Dpto. de Informática y Automática, UNED
