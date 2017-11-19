package mx.unam.fi.bde.geometria.moro;

public class PuntoCadena extends Punto{
    /**
     * Este atributo adicional, se emplea para guardar el índice original del punto empleado
     * para validar si un Punto 1 está en la misma cadena que el punto siguiente P2.
     */
    public int index;
    /**
     * @param *x
     * @param *y
     */
    public PuntoCadena(Punto p, int index) {
        super(p.x, p.y);
        this.index = index;
    }
    /* (non-Javadoc)
    * @see mx.unam.fi.bde.geometria.Punto#toString() */
    @Override
    public String toString() {
        return "(" + x + "," + y + ",i=" + index + ")";
    }

}
