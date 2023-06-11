/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mavenproject5.cconection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author EvanG
 */
public class EXCEL {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException, InvalidFormatException {

        File file = new File(".");
        for (String fileNames : file.list()) {
            System.out.println(fileNames + "lgfkbmlfdkgbmldfkbmlfkgbmdbgf");
        }

        String user = "Tommy";
        String pass = "4040";
        File f = new File("Inventario.xlsx");
        InputStream inp = new FileInputStream(f);
        Workbook wb = WorkbookFactory.create(inp);
        Sheet sheet = wb.getSheetAt(0);
        System.out.println(sheet.getLastRowNum() + 1);
        Row row = sheet.createRow(sheet.getLastRowNum() + 1);
        row.createCell(0);
        row.createCell(1);
        row.getCell(0).setCellValue(user);
        row.getCell(1).setCellValue(pass);
        int cont = 0;

     Iterator<Row> rowIterator = sheet.iterator();
        while (rowIterator.hasNext()) {
            row = rowIterator.next();
            Iterator<Cell> cellIterator = row.cellIterator();
            while (cellIterator.hasNext()) {
                Cell cell = cellIterator.next();
                System.out.print(cell.getStringCellValue() + "\t\t");
            }
        }

        inp.close();

        FileOutputStream outputStream = new FileOutputStream("Inventario.xlsx");
        wb.write(outputStream);

        //wb.close();
        outputStream.close();

        System.out.println(sheet.getLastRowNum() + "xbxcbxbxcbv");

        for (int i = 0; i < sheet.getLastRowNum(); i++) {

            System.out.println(row.getCell(i) + "ñgl,ñlg");
            if (user.equals(row.getCell(i) + "")) {
                System.out.println(row.getCell(i) + "gfgsdggfsgf");
                break;
            }
        }

        /*
        Workbook libro = new XSSFWorkbook();
        final String nombreArchivo = "Mi archivo creado con Java.xlsx";
        Sheet hoja = libro.createSheet("Hoja 1");
        Row primeraFila = hoja.createRow(0);
        Cell primeraCelda = primeraFila.createCell(0);
        primeraCelda.setCellValue("Yo voy en la primera celda y primera fila");
        File directorioActual = new File(".");
        String ubicacion = directorioActual.getAbsolutePath();
        System.out.print(directorioActual.getAbsolutePath());
        String ubicacionArchivoSalida = ubicacion.substring(0, ubicacion.length() - 1) + nombreArchivo;
        FileOutputStream outputStream;
        try {
            outputStream = new FileOutputStream(ubicacionArchivoSalida);
            libro.write(outputStream);
           
            outputStream.close();
            
            System.out.println("Libro guardado correctamente");
        } catch (FileNotFoundException ex) {
            System.out.println("Error de filenotfound");
        } catch (IOException ex) {
            System.out.println("Error de IOException");
        }*/
    }

}
