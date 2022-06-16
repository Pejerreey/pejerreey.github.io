/* 

Mini trazos, borrar trazos de mucho ancho. 
Crear multiples trazos pequeños que siguen tambien el movimiento de X, 





Utilizar el Auxiliar para hacer filas de trazos 


Crear un Array para los que se mueven a la Izquierda, los que se mueven a la Derecha, y el del Centro

Crear un espaciado combinando 2 array para moverlos en distintos momentos
por ej;

1,2,1,2,1,2,1,2
2,1,2,1,2,1,2,1
1,2,1,2,1,2,1,2
2,1,2,1,2,1,2,1

Lado Izquierda X = -975

Lado Derecho X = 

Crear un auxiliar detras del prrincipal en la posicion de X

ej X Aux = -2880
Original X = 0.
Así hacemos el loop de pantalla 

Luego if(X > 2880){
x = 0;}
if(X 

Si X > 2880 va a volver a X = 0. La imagen al ser 2800 de ancho, el tamaño que alcanza en la pantalla es de 1920, sumandole la mitad 975 hace 2880, esto hace que no se pierda y vuelva a la normalidad

RESPLANDOR AMARILLO:
Colocarlo detras como fondo, ponerlo en un objeto aparte y que con AMP el ruido mas alto, se mantiene un tint de 255 gradual.

Revisar Amp y Pitch, cambiar el Amp para ponerlo en la Y así poder hacer el efecto que va hacía arriba y abajo
*/
