package Clase_8;

import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        // Definir el salario base como constante usando 'final'
        final double SALARIO_BASE = 1000.0;
        
        // Datos fijos de comisiones
        double comisionPorCarro = 150.0;
        double porcentajeVenta = 0.05; // 5%

        // Pedir los datos del vendedor al usuario
        System.out.print("Ingrese la cantidad de carros vendidos este mes: ");
        int carrosVendidos = teclado.nextInt();

        System.out.print("Ingrese el valor total de las ventas de los carros: ");
        double totalVentas = teclado.nextDouble();

        // Calcular las partes del salario
        double totalComisionFija = carrosVendidos * comisionPorCarro;
        double totalPorcentajeVentas = totalVentas * porcentajeVenta;

        // Calcular el salario mensual total
        double salarioTotal = SALARIO_BASE + totalComisionFija + totalPorcentajeVentas;

        // Imprimir el resultado
        System.out.println("El salario mensual total del vendedor es: $" + salarioTotal);

        teclado.close();
    }
}