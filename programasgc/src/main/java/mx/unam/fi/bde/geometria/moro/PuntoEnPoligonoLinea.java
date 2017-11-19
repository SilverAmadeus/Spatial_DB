package mx.unam.fi.bde.geometria.moro;

import java.util.List;

public class PuntoEnPoligonoLinea extends AlgoritmosBasicos{

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

        for(int i=0; i<puntos.size()-1;i++){
            p0 = puntos.get(i);
            p1 = puntos.get(i+1);
            //Punto a la derecha
            if(p0.x <= p.x && p1.x <= p.x){
                continue;
            }//Punto coincidente con P0 o P1
            if((p0.x == p.x && p0.y == p.y) || (p1.x == p.x && p1.y == p.y)){
                return 0;
            }//Punto en segmento
            if (ubicacionPunto(p0,p1,p) == 0){
                return 0;
            }//Segmento Colineal
            if(p0.y == p.y && p1.y == p.y){
                continue;
            }//Checas si L conincide con P0 o P1 en su condenada y
            if(p.y == p0.y || p.y == p1.y ){
                if((p0.y <= p.y && p0.y > p.y) || (p1.y <= p.y && p0.y > p.y)){
                    intersecciones++;
                }
            }//Caso 4
            if((p0.y < p.y && p1.y > p.y) || (p1.y < p.y && p0.y > p.y)){
                intersecciones++;
            }
        }if((intersecciones%2) == 0){
            return 1;
        }else {
            return -1;
        }
    }
}
