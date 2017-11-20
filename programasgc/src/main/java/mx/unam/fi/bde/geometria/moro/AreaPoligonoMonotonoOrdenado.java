package mx.unam.fi.bde.geometria.moro;

import java.util.LinkedList;
import java.util.List;


public class AreaPoligonoMonotonoOrdenado {

    private PuntoCadena [] puntos;
    private LinkedList<Punto> lista;
    private double sumaDet;
    private int signoDet=1; //Asumir un det positivo en el primer triangulo

    /**
     * Constructor, inicializa la el arreglo <code>puntos </code> para guardar el índice original de
     * cada punto antes de invocar el ordenamiento.
     * @param pl
     */
    public AreaPoligonoMonotonoOrdenado(Poligono pl) {
        construyeCadenaPuntos(pl);
        lista = new LinkedList<>();
    }

    /**
     * * Construye la lista de puntos del tipo {@link PuntoCadena} en donde se guarda la posición
     * original del punto. Esto permitirá saber en cuál de las 2 cadenas monótonas se
     * localiza. Se debe guardar ya que al realizar el ordenamiento en X, su posición puede cambiar.
     * @param pl
     * @return
     */
    private void construyeCadenaPuntos(Poligono pl) {
        List<Punto> pList;
        int size;
        pList = pl.getPuntos();
        size = pList.size() - 1;
        puntos = new PuntoCadena[size];
        for (int i = 0; i < size; i++) {
            puntos[i] = new PuntoCadena(pList.get(i), i);
            System.out.println(puntos[i]);
        }
        System.out.println("Rolen POCKS");
    }

    /**
     * Calcula el área del polígono empleando la técnica de triangulación de polígonos
     * monótonos.
     * @returns con un solo elemento.
     * @param *punto
     */

    public double area() {
        boolean opuesto;
        QuickSortSimplePuntos.sort(puntos);
        for(int j=0; j<puntos.length;j++){
            System.out.println(puntos[j]);
        }
        // inicializa lista
        lista.add(puntos[0]);
        lista.add(puntos[1]);
        for (int i = 2; i < puntos.length; i++) {
            opuesto = esPuntoOpuesto(i);
            if (opuesto) {
                triangulaPuntoOpuesto(puntos[i]);
            } else {
                triangulaPoligonoConvexo(puntos[i]);
            }
        }
        return sumaDet / 2;
    }


    /**
     * Al encontrarse un punto que pertenece a la cadena monótona opuesta, se generan triángulos hasta
     * dejar a la lista de puntos con un solo elemento.
     * @param punto
     */
    private void triangulaPuntoOpuesto(Punto punto) {
        double det = 0;
        while (lista.size() >= 2) {
            det += determinante(lista.get(0), lista.get(1), punto);
            lista.removeFirst();
        }
        if (det < 0) {
            signoDet = -1;
        } else {
            signoDet = 1;
        }
        sumaDet += Math.abs(det);
        // se agrega p a la lista
        lista.add(punto);
    }

    /**
     * En caso de que el punto que se está procesando pertenezca a la misma cadena monótona,
     * se valida si es posible formar un triángulo. Este debe ser convexo, es decir, el
     * Signo del determinante no debe variar con respecto al signo del último determinante
     * calculado. Para ello se emplea el atributo <code>signoDet</code>
     * Al final se agrega el punto a la lista.
     * @param punto
     */
    private void triangulaPoligonoConvexo(Punto punto) {
        double det;
        int size;
        Punto ultimo, penultimo;
        System.out.println(lista);
        while ((size = lista.size()) >= 2) {
            ultimo = lista.get(lista.size() -1);
            penultimo = lista.get(lista.size() -2);
            System.out.println("Ultimo"+ultimo + " pENULTIMO" + penultimo);
            det = determinante(ultimo, penultimo, punto);
            //No se detecta triangulo
            if (det == 0){ // Signo determinante NO se cambia cuando es cero
                break;
            }//Si la lista es mayor que 2 todavia seguir procesando
            if ((det * signoDet) > 0.0){ //SI los signos son los mismos
                sumaDet += Math.abs(det);
                lista.removeLast(); // pop()
            }
            if ((det * signoDet) < 0.0){
                break;
            }
        }
        // se agrega p a la lista
        lista.add(punto);
        //este es el PUSH
    }

    /**
     * Verifica si un punto con posición indexP se encuentra en la misma cadena monótona con
     * respecto a su punto anterior. Para ellos emplea el atributo <code>index</code> del
     * objeto {@link PuntoCadena} Para validar, se calcula la diferencia entre los índices.
     * Si son consecutivos, el resultado será 1, lo que implica que se se encuentran en la
     * misma cadena monótona. si es >1 el punto está en la cadena contraria.
     * @param indexP
     * @return
     */
    private boolean esPuntoOpuesto(int indexP) {
        int result;
        PuntoCadena pULtimo, pSiguiente;
        pULtimo = (PuntoCadena)lista.peekLast(); //No sacar el elemento
        pSiguiente = puntos[indexP];
        result  = Math.abs(pULtimo.index-pSiguiente.index);
        //System.out.println(pULtimo+"-"+pSiguiente+"="+result);
        if (result != 1){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Calcula el determinante de 3 puntos.
     * @param a
     * @param b
     * @param c
     * @return
     */
    private static double determinante(Punto a, Punto b, Punto c) {
        return ((a.x * (c.y - b.y) - a.y * (c.x - b.x) + (c.x * b.y) - (b.x * c.y)));
    }







}
