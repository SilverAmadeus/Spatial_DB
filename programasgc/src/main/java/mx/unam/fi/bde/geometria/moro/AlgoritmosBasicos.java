package mx.unam.fi.bde.geometria.moro;

import java.util.List;


public class AlgoritmosBasicos {

    public static int determinante(Punto a, Punto b, Punto p) {
        return (int)((a.x * (p.y - b.y) - a.y * (p.x - b.x) + (p.x * b.y) - (b.x * p.y)));
    }
    /**
     * Este m�todo verifica la ubicaci�n de un punto con respecto a un segmento
     * de recta dirigido AB.
     * @param a El punto inicial del segmento
     * @param b El punto final del segmento
     * @param p El punto a verificar.
     * @return >0 si est� a la derecha (el producto cruz de los 3 puntos es
     *
    positivo) ,<0 si est� a la izquierda (producto cruz negativo) y 0
     *
    si son colineales.
     */

    public static int ubicacionPunto(Punto a, Punto b, Punto p){
        int det;
        det = determinante(a,b,p);
        if (det>0){
            return 1;
        }else if(det <0){
            return -1;
        }else{
            return 0;
        }
    }


    /**
     * Verifica que un punto est� dentro de un pol�gono convexo.
     * @param poligono El pol�gono debe ser convexo.
     * @param p el punto p a verificar
     * @return >0 si est� dentro, <0 si esta fuera, 0 si coincide con el l�mite.
     */

    public static int puntoEnPoligonoConvexo(Poligono poligono, Punto p) {
        List<Punto> puntos;
        puntos = poligono.getPuntos();
        int ubicacion;

        ubicacion = ubicacionPunto(puntos.get(0),puntos.get(1),p);
        if (ubicacion==0){
            return  0;
        }
        for (int i=1; i<puntos.size()-1; i++){
            int sigUbicacion = ubicacionPunto(puntos.get(i),puntos.get(i+1),p);
            if (sigUbicacion == 0){
                return 0;
            }else if(ubicacion * sigUbicacion < 0){
                return -1;
            }else{
                continue;
            }
        }
        return 1;
    }
}
