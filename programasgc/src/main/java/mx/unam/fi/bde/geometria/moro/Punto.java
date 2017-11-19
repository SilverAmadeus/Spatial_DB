package mx.unam.fi.bde.geometria.moro;

public class Punto implements  Comparable<Punto>{
    public double x;
    public double y;


    public Punto(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public Punto(){} //Empty Constructor


    public String toString(){
        return "(" + x + "," + y + ")";
       }
    @Override
    public boolean equals(Object obj){
        if ((obj instanceof Punto)){
            Punto p = (Punto)obj;
            return this.x == p.x && this.y == p.y;
        }
        return false;
    }
    @Override
    public int compareTo(Punto o){
        if (this.x > o.x) {
            return 1;
        } else if (this.x < o.x) {
            return -1;
        } else {
            if (this.y > o.y) {
                return 1;
            } else if (this.y < o.y) {
                return -1;
            } else {
                return 0;
            }
        }
    }

}