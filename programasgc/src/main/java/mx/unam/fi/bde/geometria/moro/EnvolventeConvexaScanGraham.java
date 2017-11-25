package mx.unam.fi.bde.geometria.moro;

import java.util.List;
import java.util.ArrayList;


public class EnvolventeConvexaScanGraham {


    /**
     * Calcula la envolvente convexa empleando el algoritmo Scan de Graham.
     * @param puntos El arreglo de puntos de entrada
     * @return Un arreglo con los puntos que forman a la envolvente.
     */
    public static Punto[] calculaEnvolvente(Punto[] puntos) {
        Punto inicial;
        int indexP0, sizeArr, j;

        PuntoAngulo p0, p1;

        List<Punto> result = new ArrayList<>();


        sizeArr = puntos.length;
        PuntoAngulo[] pAngulos = new PuntoAngulo[sizeArr];
        List<PuntoAngulo> env = new ArrayList<>();
        indexP0 = obtenPuntoInicial(puntos);

        inicial = puntos[indexP0];

        for (int i = 0; i < sizeArr; i++) {
            pAngulos[i] = new PuntoAngulo(puntos[i], calculaTanAngulo(inicial, puntos[i]));//}
            //System.out.println(p[i]);
        }

        QuickSortSimplePuntos.sort(pAngulos);

        env.add(pAngulos[0]);
        env.add(pAngulos[1]);

        int index = 0;
        double det;

        for (int i = 2; i < pAngulos.length; i++) {
            p0 = env.get(index);
            p1 = env.get(index + 1);

            det = determinante(p0, p1, pAngulos[i]);

            while (det > 0) {
                env.remove(index + 1);
                index--;
                p0 = env.get(index);
                p1 = env.get(index + 1);
                det = determinante(p0, p1, pAngulos[i]);
            }

            env.add(pAngulos[i]);
            index++;
        }
        //Se copia el arreglo a una lista para respetar el tamanio
        //Del obtenido al del test
        for (j=0; j<env.size(); j++){
            result.add(new Punto(env.get(j).getX(),env.get(j).getY()));
        }
        result.add(inicial); //Agregando final

        return result.toArray(new Punto[result.size()]);
    }

    /**
     * Calcula el seno del angulo que existe entre ambos puntos.
     * @param p0
     * @param p1
     * @return El seno del angulo formula : tan A = c.O/c.A
     */
    private static double calculaTanAngulo(Punto p0, Punto p1) {
        double x0, x1, y0, y1;
        x0 = p0.getX();
        y0 = p0.getY();
        x1 = p1.getX();
        y1 = p1.getY();

        if (x0 < x1){
            return Math.toDegrees(Math.atan((y1-y0)/(x1-x0)));
        }else if(x0 == x1){
            if(y0 == y1)
                return 0.0; // Si es inicial
            else
                return 90.0;
        }else{
            return 180.0 + Math.toDegrees(Math.atan((y1-y0)/(x1-x0)));
        }
    }

    /**
     * Obtiene el punto con la Y mínima.
     * @param puntos
     * @return Indice de punto Minimo
     */
    public static int obtenPuntoInicial(Punto[] puntos) {
        int i,j, index=0;
        double min = puntos[0].getY();
        double x;
        for (i=1; i<puntos.length; i++) {
            if (min >= puntos[i].getY()) {
                min = puntos[i].getY();
                index = i;
            }
        }
        x = puntos[index].getX();
        for (j=0; j<puntos.length; j++) {
            if (min == puntos[j].getY()) {
                if (x > puntos[j].getX()) {
                    index = j;
                    x = puntos[j].getX();
                }
            }
        }
        return index;
    }
    /**
     * Calcula el determinante de 3 puntos.
     * @param a
     * @param b
     * @param c
     * @return
     */
    private static double determinante(Punto a, Punto b, Punto c) {
        return (a.x * (c.y - b.y) - a.y * (c.x - b.x) + (c.x * b.y) - (b.x * c.y));
    }
}
