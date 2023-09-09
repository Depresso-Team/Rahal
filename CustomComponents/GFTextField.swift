//
//  GFTextField.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 08/09/2023.
//

import SwiftUI

enum TextFieldType {
    case normal, password
}


//extension TextField {
//    func textFieldStyle(some View) -> View {
//
//    }
//}

struct CurvedTextField: View {
    @Binding var text: String
    var placeholder: String = ""
    var title: String = "Test"
    var textFieldType: TextFieldType = .normal
    
    var body: some View {
        VStack (alignment: .leading,spacing: 8) {
            Text(title)
            
            switch textFieldType {
            case .normal:
                TextField(placeholder, text: $text)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
                    .background(Color("CustomLightGreenColor"))
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
            case .password:
                SecureField(placeholder, text: $text)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
                    .background(Color("CustomLightGreenColor"))
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
            }
            
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        @State var test: String = ""
        CurvedTextField(text: $test)
    }
}
