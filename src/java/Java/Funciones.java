package Java;


import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author j.domenech
 */
public class Funciones {
    public static Scanner pro= new Scanner(System.in);
    public static SecretKey hashString(String contrasenya) {
        try {
            // Obtiene una instancia del algoritmo de hashing SHA-256.
            MessageDigest digest = MessageDigest.getInstance("SHA-256");

            // Convierte el string original a bytes y luego realiza el hash.
            byte[] encodedHash = digest.digest(contrasenya.getBytes(StandardCharsets.UTF_8));

            return new SecretKeySpec(encodedHash, "AES");

        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("No se pudo hashear el string debido a: " + e.getMessage(), e);
        }
    }
}
