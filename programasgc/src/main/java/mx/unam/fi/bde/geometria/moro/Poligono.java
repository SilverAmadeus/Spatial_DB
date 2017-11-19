package mx.unam.fi.bde.geometria.moro;

import java.util.List;

public class Poligono extends Punto{
    public static List<Punto> puntos;

    public Poligono(){}

    public static List<Punto> getPuntos(){
        return puntos;
    }

    public static void setPuntos(List<Punto> listpunto){
        puntos=listpunto;
    }

}
