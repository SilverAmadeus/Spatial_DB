package mx.unam.fi.bde.geometria.moro.pruebas;

import org.junit.Assert;
import org.junit.Test;
import mx.unam.fi.bde.geometria.moro.AlgoritmosBasicos;
import mx.unam.fi.bde.geometria.moro.Punto;
import mx.unam.fi.bde.geometria.moro.Poligono;
import java.util.List;
import java.util.ArrayList;

public class PuntoEnPoligonoTestCase {
    @Test
    public void puntoEnPoligono() {
        Poligono poligono;
        List<Punto> puntos;
        poligono = new Poligono();
        puntos = new ArrayList<>();
        puntos.add(new Punto(1, 1));
        puntos.add(new Punto(10, 1));
        puntos.add(new Punto(5, 5));
        puntos.add(new Punto(1, 1));
        poligono.setPuntos(puntos);
        // punto Dentro
        Assert.assertTrue(AlgoritmosBasicos.puntoEnPoligonoConvexo(poligono, new Punto(5, 2)) > 0);
        // punto fuera
        Assert.assertTrue(AlgoritmosBasicos.puntoEnPoligonoConvexo(poligono, new Punto(15, 3)) < 0);
        // punto en limite
        Assert.assertTrue(AlgoritmosBasicos.puntoEnPoligonoConvexo(poligono, new Punto(8, 1)) == 0);
    }
}

