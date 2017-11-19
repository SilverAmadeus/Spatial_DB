package mx.unam.fi.bde.geometria.moro;

import java.lang.Math;
import java.util.List;

//public class AreaPoligonoConvexo extends AlgoritmosBasicos{
//Iba a extender de Algoritmos Basicos BUT determinante regresa int y necesitamos double
//Por eso creeamos areaTriangulo
public class AreaPoligonoConvexo{

    public static double areaTriangulo(Punto a, Punto b, Punto p) {
        double area;
        area = ((a.x * (p.y - b.y) - a.y * (p.x - b.x) + (p.x * b.y) - (b.x * p.y)));
        area = area * 0.5;
        area = Math.abs(area);
        return area;
    }
    /**
     * Calcula el área de un polígono convexo empleando la técnica de triangulación de polígonos,
     * tomando como punto inicial del abanico, al punto P0
     * @param poligono
     * @return
     */
    public static double area(Poligono poligono) {
        List<Punto> puntos;
        puntos = poligono.getPuntos();
        Punto p0, p1, p2;
        p0 = puntos.get(0);
        double result = 0.0;

        for (int i=0; i <puntos.size()-1; i++){
            p1 = puntos.get(i);
            p2 = puntos.get(i+1);
            result = result + areaTriangulo(p0,p1,p2);
        }
        return result;
    }
}
