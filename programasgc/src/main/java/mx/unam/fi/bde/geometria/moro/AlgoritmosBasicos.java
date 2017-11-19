package mx.unam.fi.bde.geometria.moro;

/**
 * Este método verifica la ubicación de un punto con respecto a un segmento
 * de recta dirigido AB.
 * @param a El punto inicial del segmento
 * @param b El punto final del segmento
 * @param p El punto a verificar.
 * @return >0 si está a la derecha (el producto cruz de los 3 puntos es
 *
positivo) ,<0 si está a la izquierda (producto cruz negativo) y 0
 *
si son colineales.
 */


public class AlgoritmosBasicos {

    public static double ubicacionPunto(Punto a, Punto b, Punto p) {
        return ((a.x * (p.y - b.y) - a.y * (p.x - b.x) + (p.x * b.y) - (b.x * p.y)));
    }
}
