//
//  ContentView.swift
//  Desafio1
//
//  Created by Lucas Real Dias on 25/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var shield: Image = Image(systemName: "shield")
    
    var body: some View {
        
        ZStack{
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack{
                Text("Qual sua casa em Harry Potter?")
                    .foregroundColor(Color("text"))
                    .font(.system(size: 32))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                Spacer()
                
                shield
                    .resizable()
                    .frame(width: 320, height: 450, alignment: .center)
                    .cornerRadius(33)
                    .foregroundColor(Color("text"))
                Spacer()
                
                Button("Trocar") {
                    
                    if counter == 0 {
                        self.shield = Image("img1")
                    } else if counter == 1 {
                        self.shield = Image("img2")
                    } else if counter == 2 {
                        self.shield = Image("img3")
                    } else {
                        self.shield = Image("img4")
                        counter = 0
                        return
                    }
                    if counter < 3 {
                        counter += 1
                    } else {
                        counter = 0
                    }
                }
                .font(.system(size: 25))
                .padding(10)
                .padding(.horizontal, 40)
                .background(Color("text"))
                .clipShape(Capsule())
                .foregroundColor(Color("bg"))
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
