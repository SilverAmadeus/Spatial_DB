package mx.unam.fi.bde.geometria.moro;

public class Punto{
    double x;
    double y;


    public Punto(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public Punto(){} //Empty Constructor


    public String toString(){
        return "("+x+","+y+")";
       }

    public boolean equals(Object obj){
        if (!(obj instanceof Punto)){
            return false;
        }
        Punto p = (Punto) obj;
        return this.x == p.x && this.y == p.y;
    }

    public int compareTo(Punto p){
        if (this.equals(p)){
            return 0; //The same
        }
        else{
            if(this.x >= p.x){
                return this.compareY(p.x);
                }
            else{
                return this.compareY(p.y);
            }
        }
    }

    public int compareY(double y){
        if (this.y >= y){
            return 1;
        }else {
            return -1;
        }
    }
}