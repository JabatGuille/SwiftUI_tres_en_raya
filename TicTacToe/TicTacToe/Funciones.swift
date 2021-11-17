//
//  Funciones.swift
//  TicTacToe
//
//  Created by  on 10/11/21.
//

import Foundation

func tresenraya(contador : Int,btn :String) -> String
{
    var boton : String
    
    if contador % 2 == 0 && btn == "  "
    {
        boton = "🐕"
    }else if contador % 2 != 0 && btn == "  "{
        boton = "🐈"
    }
    else{
        boton = btn
    }
    
    return boton
    
}


func juegacion(b1 :String,b2 :String,b3 :String,b4 :String,b5 :String,b6 :String,b7 :String,b8 :String,b9 :String,contador : Int) ->Int {
    
    // PERRACO
    if b1 == "🐕" && b2 == "🐕" && b3 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b4 == "🐕" && b5 == "🐕" && b6 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b7 == "🐕" && b8 == "🐕" && b9 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b1 == "🐕" && b4 == "🐕" && b7 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b2 == "🐕" && b5 == "🐕" && b8 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b3 == "🐕" && b6 == "🐕" && b9 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else  if b1 == "🐕" && b5 == "🐕" && b9 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b3 == "🐕" && b5 == "🐕" && b7 == "🐕"
    {
        print("Ganador 🐕")
        return 1
    }else if b1 == "🐈" && b2 == "🐈" && b3 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else  if b4 == "🐈" && b5 == "🐈" && b6 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if b7 == "🐈" && b8 == "🐈" && b9 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if b1 == "🐈" && b4 == "🐈" && b7 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else  if b2 == "🐈" && b5 == "🐈" && b8 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if b3 == "🐈" && b6 == "🐈" && b9 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if b1 == "🐈" && b5 == "🐈" && b9 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if b3 == "🐈" && b5 == "🐈" && b7 == "🐈"
    {
        print("Ganador 🐈")
        return 2
    }else if contador == 8
    {
        return 3
    }
    else
    {
        return 0
    }
}

