//
//  10Closure.swift
//  
//
//  Created by Jurymar Colmenares on 5/12/25.
//
//Sintaxis basica

@MainActor let saludo = {
    print("Hola desde un closure")
}

func saludo1() {
    saludo()   // Ejecutar el closure
}


