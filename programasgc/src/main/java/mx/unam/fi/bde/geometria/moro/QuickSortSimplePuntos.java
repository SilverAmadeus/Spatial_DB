package mx.unam.fi.bde.geometria.moro;
/**
 * Implementaci�n del algoritmo QuickSort tomando como pivote el elemento del centro del
 * arreglo. Si es impar, toma en elemento anterior. Se emplea la t�cnica del intercambio
 * del elementos con respecto al pivote seleccionado: todos los menores del lado izq, y
 * los mayores del lado derecho. Se considera un caso especial. Considerar la siguiente
 * combinaci�n:
 * <pre>
 * 1 3 2 3
 Suponer que el pivote es 2. Antes de aplicar intercambio, suponer que i =1, j=3
 * Ambos apuntan a un valor =3 Al hacer intercambio no hay efecto ya que se trata del mismo valor (3).
 * Los valores de i, j ya no se modifican por esta condici�n por lo que se produce ciclo infinito.
 * Para romperlo, se verifica cu�l de los 2 valores est� en su posici�n correcta con respecto al
 * pivote.
 * En este ejemplo, el valor 3 del lado derecho es correcto (3>2) por lo que se decrementa a j.
 * Con esto se rompe el ciclo infinito. Revisar la validaci�n en el c�digo.
 * </pre>
 * Este c�digo puede ser actualizado para ordenar otros tipos de datos.
 * @author Jorge A. Rodr�guez Campos (jorgerdc@gmail.com)
 * @version 1.0
 * @since 1.0
 */
public class QuickSortSimplePuntos {

    /**
     * @param indiceIzquierdo
     * @param indiceDerecho
     * @param array
     */
    private static void sort(int indiceIzquierdo, int indiceDerecho, Punto[] array) {
        Punto pivote;
        Punto temp;
        int i;
        int j;

        // toma como pivote al elemento del centro del arreglo.
        pivote = array[(indiceDerecho + indiceIzquierdo) / 2];
        i = indiceIzquierdo;
        j = indiceDerecho;
        while (i < j) {
            while (array[i].compareTo(pivote) < 0) {
                i++;
            }
            while (array[j].compareTo(pivote) > 0) {
                j--;
            }
        // caso especial
            if (array[i].compareTo(array[j]) == 0 && i < j) {
                if (array[i].compareTo(pivote) < 0) {
                    i++;
                } else {
                    j--;
                }
            }
        // se realiza el intercambio de valores.
            if (i < j) {
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
        // recursividad para ordenar a los sub-arreglos
        if (indiceIzquierdo < i - 1) {
            sort(indiceIzquierdo, i - 1, array);
        }
        if (indiceDerecho > j + 1) {
            sort(j + 1, indiceDerecho, array);
        }
    }
    /**
     * Invoca el ordenamiento iniciando en el elemento 0 y hasta el �ltimo elemento del
     * arreglo.
     * @param array
     */
    public static void sort(Punto array[]) {
        sort(0, array.length - 1, array);
    }

}
