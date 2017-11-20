package mx.unam.fi.bde.geometria.moro;

import java.util.List;

public class PuntoEnPoligonoLinea{

    /**
     * Verifica si un punto está en un polígono empleando la técnica de la recta paralela al eje X a
     * partir del punto P.
     * @param pl
     * @param p
     * @return 0, si el punto está en el límite, 1 si está fuera, ó -1 si el punto está dentro.
     */

    public static int puntoEnPoligono(Poligono pl, Punto p) {

        List<Punto> puntos;
        puntos = pl.getPuntos();
        Punto p0,p1;
        int intersecciones = 0;

        for(int i=0; i<puntos.size()-1; i++){
            p0 = puntos.get(i);
            p1 = puntos.get(i+1);
            //Punto estrictamente a la DERECHA!!!
            if((p0.x < p.x) && (p1.x < p.x)){
                continue;
            }//Es algun vertice del segmento P0 o P1
            if(((p0.x == p.x) && (p0.y == p.y)) || ((p1.x == p.x) && (p1.y == p.y))){
                return 0;
            }//Colineal
            if((p.y == p0.y) && (p.y == p1.y)){
                if(((p.x < p0.x) && (p.x > p1.x)) || ((p.x > p0.x) && (p.x < p1.x))){// Colineal dentro del segmento
                    return 0;
                }
            }//Checas si L conincide con P0 o P1 en su condenada y
            if((p.y == p0.y) || (p.y == p1.y)){
                if(((p0.y <= p.y) && (p1.y > p.y)) || ((p1.y <= p.y) && (p0.y > p.y))){
                    intersecciones++;
                }
            }//Caso 4
            if(((p0.y < p.y) && (p1.y > p.y)) || ((p1.y < p.y) && (p0.y > p.y)) && (p.x < p1.x)){ //X siempre menor que el siguiente
                intersecciones++;
            }
            //Punto en segmento
            if (AlgoritmosBasicos.ubicacionPunto(p0,p1,p) == 0){ //Caso del triangulo, no necesariamente esta en el segmento
                if (((p.x < p0.x) && ( p.x < p1.x)) // A la izquierda. Derecha hasta arriba
                        ||((p.y < p1.y) && (p.y < p0.y)) //Abajo
                        ||((p.y > p0.y) && (p.y > p1.y))) //Arriba
                    continue;
                else
                    return 0;
            }

        }if((intersecciones%2) == 0){
            return 1;
        }else {
            return -1;
        }
    }
}
