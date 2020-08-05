//
//  LoginView.swift
//  UIF
//
//  Created by hegaro on 8/4/20.
//  Copyright © 2020 hegaro. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var code: String = ""
    @State var phone: String = ""
    
    var body: some View {
        VStack(spacing:10) {
            Text("Fastgi")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.top)
            
            Text("Te enviaremos un sms con el código de verificación")
                .font(.caption)
                .foregroundColor(.white)
            
            HStack{
                TextField("Código", text: $code)
                    .padding(12)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .keyboardType(.namePhonePad)
                    .frame(maxWidth:120)
                    .clipShape(Capsule())
                
                TextField("Teléfono", text: $code)
                    .padding(12)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .keyboardType(.namePhonePad)
                    .clipShape(Capsule())
            }
            
            Button(action: {})
            {
                Text("Registrarse")
                    .foregroundColor(.white)
                    .frame(maxWidth:.infinity, alignment: .trailing)
            }
            
            Button(action: {})
            {
                Text("Ingresar")
                    .foregroundColor(.white)
                    .padding(12)
                    .frame(maxWidth:200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.white, lineWidth: 1)
                )
            }
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color("Primary"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
