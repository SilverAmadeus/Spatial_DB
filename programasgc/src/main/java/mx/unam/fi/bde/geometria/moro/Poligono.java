package mx.unam.fi.bde.geometria.moro;

import java.util.List;

public class Poligono extends Punto{
    public List<Punto> puntos;

    public Poligono(){}

    public List<Punto> getPuntos(){
        return puntos;
    }

    public void setPuntos(List<Punto> listpunto){
        puntos=listpunto;
    }

}
