/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;
import java.io.File;
/**
 *
 * @author wicho
 */
public class Principal {
    public static void main(String[] arg){
        String ruta = "C:/Users/wicho/Documents/NetBeansProjects/proyecto/src/codigo/Lexer.flex";
        generadorLexer(ruta);
    }
    public static void generadorLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
