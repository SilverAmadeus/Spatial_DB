package mx.unam.fi.bde.geometria.moro;

public class PuntoAngulo extends Punto{

    public double tanAngulo;

    public PuntoAngulo(Punto p, double tanAngulo) {
        super(p.x, p.y);
        this.tanAngulo = tanAngulo;
    }
    /* (non-Javadoc)
    * @see java.lang.Object#toString()
    */
    @Override
    public String toString() {
        return "(" + x + "," + y + ",s=" + tanAngulo + ")";
    }

    /* (non-Javadoc)
* @see mx.unam.fi.bde.geometria.Punto#compareTo(mx.unam.fi.bde.geometria.Punto)
*/
    @Override
    public int compareTo(Punto o) {
        PuntoAngulo pa = (PuntoAngulo) o;
        if (this.tanAngulo > pa.tanAngulo) {
            return 1;
        } else if (this.tanAngulo < pa.tanAngulo) {
            return -1;
        } else {
            if (this.y > pa.y) {
                return 1;
            } else if (this.y < pa.y) {
                return -1;
            } else {
                if (this.x > pa.x) {
                    return 1;
                } else if (this.x < pa.x) {
                    return -1;
                } else {
                    return 0;
                }
            }
        }
    }
}
