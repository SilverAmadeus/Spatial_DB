package mx.unam.fi.bde.geometria.moro;

import java.util.HashSet;
import java.util.Set;

public class EnvolventeConvexaAlgoritmoAristas {

    /**
     * Realiza el cálculo de la envolvente convexa empleando el algoritmo de las aristas.
     * @param puntos La lista de puntos a considerar
     * @return Un arreglo de puntos que forman a la envolvente convexa.
     */
    public static Punto[] envolventeConvexa(Punto[] puntos) {
        int i,j;
        Punto a, b;
        boolean flag;
        Punto [] arr = puntos;
        Punto convexArr [];
        Set<Punto> convexSet = new HashSet<>();

        for (i=0; i<arr.length ; i++){
            a = arr[i];
            for(j=i+1; j<arr.length; j++){
                b = arr[j];
                flag = validaPuntos(a,b,arr);
                if(flag){
                    convexSet.add(a);
                    convexSet.add(b);
                }
            }
        }

        convexArr = new Punto[convexSet.size()];
        return convexSet.toArray(convexArr);
    }

    /**
     * Este método se encarga de verificar que los N-2 puntos estén todos a la derecha o a la
     * izquierda del segmento que se forma con los puntos cuyos índices son i,j.
     * @param a Objeto Punto en indice i
     * @param b Objeto Punto en indice j
     * @param puntos La lista completa de puntos
     * @return true si los puntos i,j forman una arista de la envolvente convexa con respecto
     *
    a los N-2 puntos.
     */
    private static boolean validaPuntos(Punto a, Punto b, Punto[] puntos) {
        int det, det2, k;
        det = ubicacionPunto(a,b,puntos[0]); //Extends Algoritmos Basicos

        for (k=0; k< puntos.length; k++){
            det2 = ubicacionPunto(a,b,puntos[k]);

            if ((det * det2) < 0)
                return false;

            if(det2 == 0)
                continue;
            else
                det = det2;
        }
        return true;
    }

    public static double determinante(Punto a, Punto b, Punto p) {
        return (a.x * (p.y - b.y) - a.y * (p.x - b.x) + (p.x * b.y) - (b.x * p.y));
    }

    public static int ubicacionPunto(Punto a, Punto b, Punto p){
        double det;
        det = determinante(a,b,p);
        if (det> 0.0){
            return 1;
        }else if(det < 0.0){
            return -1;
        }else{
            return 0;
        }
    }
}
