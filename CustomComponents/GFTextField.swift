//
//  GFTextField.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 08/09/2023.
//

import SwiftUI

import SwiftUI

struct CurvedTextField: View {
    @Binding var text: String
    var placeholder: String
    var title: String
    var isSecureField: Bool = false
    
    var body: some View {
        VStack (alignment: .leading,spacing: 6) {
            Text(title)
            
            if isSecureField{
                SecureField(placeholder, text: $text)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 10)
                    .background(Color("CustomLightGreenColor"))
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                    
            }else{
                TextField(placeholder, text: $text)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 10)
                    .background(Color("CustomLightGreenColor"))
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                    
            }
            
        }.padding(.horizontal, 6)
    }
}

struct ContentView: View {
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            CurvedTextField(text: $email, placeholder: "Abdo@depresso.com",title: "Email")
            
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
