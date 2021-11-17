//
//  ContentView.swift
//  TicTacToe
//
//  Created by Ion Jaureguialzo Sarasola on 29/10/21.
//

import SwiftUI
struct ContentView: View {
    @State var btn1 : String = "  "
    @State var btn2 : String = "  "
    @State var btn3 : String = "  "
    @State var btn4 : String = "  "
    @State var btn5 : String = "  "
    @State var btn6 : String = "  "
    @State var btn7 : String = "  "
    @State var btn8 : String = "  "
    @State var btn9 : String = "  "
    @State var con : Int = 0
    @State var jugador : Bool = false
    @State var victoria = false
    @State var numero : Int = 0
    @State var simbolo :String = ""
    @State var perro : Int = 0
    @State var gato : Int = 0
    @State var modojuego : ModoDeJuego = ModoDeJuego.Multijugador
    enum ModoDeJuego: String, CaseIterable, Identifiable {
        case Multijugador
        case Maquina

        var id: String { self.rawValue }
    }
    var body: some View {
        VStack{
            Spacer()
            VStack{

                Picker("Multijugador", selection: $modojuego){
                    Text("1 jugador").tag(ModoDeJuego.Maquina)
                    Text("2 jugadores").tag(ModoDeJuego.Multijugador)
                }.pickerStyle(.segmented)

                HStack{
                    Button(btn1)
                    {
                        btn1 = tresenraya(jugador: jugador, btn:btn1)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn2)
                    {
                        btn2 = tresenraya(jugador: jugador, btn:btn2)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn3)
                    {
                        btn3 = tresenraya(jugador: jugador, btn:btn3)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                }.padding(12)
                HStack{
                    Button(btn4)
                    {
                        btn4 = tresenraya(jugador: jugador, btn:btn4)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn5)
                    {
                        btn5 = tresenraya(jugador: jugador, btn:btn5)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn6)
                    {
                        btn6 = tresenraya(jugador: jugador, btn:btn6)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                }.padding(12)
                HStack{
                    Button(btn7)
                    {
                        btn7 = tresenraya(jugador: jugador, btn:btn7)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn8)
                    {
                        btn8 = tresenraya(jugador: jugador, btn:btn8)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                    Button(btn9)
                    {
                        btn9 = tresenraya(jugador: jugador, btn:btn9)
                        con += 1
                        if jugador{
                            jugador = false
                        }else{
                            jugador = true
                        }
                        numero = juegacion(b1: btn1, b2: btn2, b3: btn3, b4: btn4, b5: btn5, b6: btn6, b7: btn7, b8: btn8, b9: btn9,contador: con)
                        if numero == 1{
                            simbolo = "Ganador 🐕"
                            victoria = true
                            limpiar()
                            jugador = true
                        perro = perro+1
                        }else if numero == 2
                        {
                            simbolo = "Ganador 🐈"
                            victoria = true
                            limpiar()
                            jugador = false
                            gato = gato+1
                        }else if numero == 3{
                            simbolo = "Empate"
                            victoria = true
                            limpiar()
                        }
                        
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("asset"))
                    .foregroundColor(Color .black)
                    .font(.custom("Courier",size: 24))
                    .alert(simbolo,isPresented: $victoria)
                    {}
                    
                }.padding(12)
                
            }
            Spacer()
            HStack{
                Text(" 🐕 " + String(perro))
                Text(" | ")
                Text(" 🐈 " + String(gato))
                
            }
            Spacer()
        
        }
    }
    
    func limpiar(){
        btn1 = "  "
        btn2 = "  "
        btn3 = "  "
        btn4 = "  "
        btn5 = "  "
        btn6 = "  "
        btn7 = "  "
        btn8 = "  "
        btn9 = "  "
        con = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    

}

