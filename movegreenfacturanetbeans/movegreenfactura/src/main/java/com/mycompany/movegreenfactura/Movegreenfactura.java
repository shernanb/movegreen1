
package com.mycompany.movegreenfactura;
import javax.swing.JOptionPane;
/**
 *
 * @author esnei
 */
public class Movegreenfactura {

    public static void main(String[] args) {
        
        String vehic = JOptionPane.showInputDialog("Ingrese el Vehíulo a Arrendar: Patineta ó Bicicleta");
        int time = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el tiempo en minutos del arrendamiento: "));
        
        int minutos = 100;
        int total = time * minutos;
        
        double descuento = 0;
        if (time >= 60 ) {
            descuento = total * 0.1;
        }
        double totalConDescuento = total - descuento;
        
        
        String factura = String.format("""
                                       ***Arrendamiento*** 
                                       Vehiculo usado: %s
                                       Tiempo de uso: %d minutos.
                                       Valor por minuto: %d pesos.
                                       Total: $ %d 
                                       Descuento: $ %.2f 
                                       Total a Pagar: $ %.2f""", vehic, time, minutos, total, descuento, totalConDescuento);
        
        JOptionPane.showMessageDialog(null, factura);
    }
}
