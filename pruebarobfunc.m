function [q1, q2, q3]=  pruebarobfunc(x,y,z)
 %Esta funci�n devuelve el giro de cada articulaci�n (en radianes) del robot Scara a
 %partir de los par�metros x, y, z de la punta del robot
   %Defino los valores de l1, l2 y l3, ahora ser�n contantes
   syms l1;
   syms l2;
   syms l3;
   %l1=10;
   %l2=10;
   %l3=10;
      %Obtenci�n del modelo cinem�tico inverso por m�todos geom�tricos
       %Primero obtendremos q1 y q2 proyectando sobre el plano x0y0 sabiendo
       %que usaremos la posici�n de codo abajo
       M=(x^2+y^2-l2^2-l3^2)/(2*l2*l3);
       q2=atan2(sqrt(1-M^2),M); %si ponemos un - ser� posicion de codo arriba
       q1=atan2(y,x)-atan2(l3*sin(q2),l2+l3*cos(q2));
       
       %A continuaci�n obtendremos la tercera componente proyectando sobre
       %el plano x0z0
       q3=l1-z;
   
end