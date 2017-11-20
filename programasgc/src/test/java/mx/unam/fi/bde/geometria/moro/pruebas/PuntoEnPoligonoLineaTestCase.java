package mx.unam.fi.bde.geometria.moro.pruebas;

import org.junit.Assert;
import org.junit.Test;

import java.util.List;
import java.util.ArrayList;

import mx.unam.fi.bde.geometria.moro.Punto;
import mx.unam.fi.bde.geometria.moro.Poligono;
import mx.unam.fi.bde.geometria.moro.PuntoEnPoligonoLinea;

public class PuntoEnPoligonoLineaTestCase {

    @Test
    public void puntoEnPoligono() {

        Poligono poligono;
        List<Punto> puntos;
        poligono = new Poligono();
        puntos = new ArrayList<>();

        puntos.add(new Punto(1, 4));
        puntos.add(new Punto(3, 8));
        puntos.add(new Punto(6, 6));
        puntos.add(new Punto(9, 6));
        puntos.add(new Punto(10, 4));
        puntos.add(new Punto(11, 6));
        puntos.add(new Punto(13, 8));
        puntos.add(new Punto(15, 6));
        puntos.add(new Punto(15, 4));
        puntos.add(new Punto(13, 1));
        puntos.add(new Punto(12, 3));
        puntos.add(new Punto(10, 1));
        puntos.add(new Punto(9, 3));
        puntos.add(new Punto(7, 3));
        puntos.add(new Punto(5, 1));
        puntos.add(new Punto(4, 3));
        puntos.add(new Punto(4, 1));
        puntos.add(new Punto(1, 4));
        poligono.setPuntos(puntos);

        int ubicacion;
        // punto fuera
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(1, 6));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 1);

        // punto Dentro
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(7, 5));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == -1);

        // punto en limite
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(1, 4));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);

        // punto en limite
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(2, 3));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);

        // punto fuera
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(10, 5));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 1);

        // punto dentro
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(4, 4));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == -1);

        // punto dentro
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(11, 3));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == -1);

        // punto en segmento
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(8, 6));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);

        // punto en segmento
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(13, 1));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);

        // punto en segmento
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(13, 8));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);

        // punto en segmento
        ubicacion = PuntoEnPoligonoLinea.puntoEnPoligono(poligono, new Punto(15, 5));
        System.out.println(ubicacion);
        Assert.assertTrue(ubicacion == 0);
    }
}
