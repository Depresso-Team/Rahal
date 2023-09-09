//
//  LoginView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - PROPERTIES
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // LOGO
                Image("rahal-logo").resizable().scaledToFill().frame(width: 100,height: 152).padding(.top,48)
                
                
                // FORM FIELDS
                VStack (alignment: .leading, spacing: 18) {
                    Text("Login").font(.title).fontWeight(.bold).foregroundColor(Color("CustomDarkGreenColor"))
                    CurvedTextField(text: $email, placeholder: "",title: "Email Address").textInputAutocapitalization(.none)
                    
                    CurvedTextField(text: $password, placeholder: "", title: "Password",textFieldType: .password)
                }.padding(.horizontal)
                    .padding(.top,28)
                
                
                // Forget Password
                
                HStack{
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forget Password ?")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.top, 5)
                            .padding(.bottom, 20)
                            .padding(.trailing,22)
                            
                    }
                    
                    
                }
                
                // SIGN IN BUTTON
                Button{
                    
                }label: {
                    Text("Login").fontWeight(.bold).foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 100,height: 52).font(.system(size: 24))
                        
                    
                }.background(Color("CustomDarkGreenColor")).cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                
                
                // SIGN UP BUTTON
                HStack (spacing: 2){
                    Text("Don’t have any account yet ?").foregroundColor(.black)
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                        Text("Sign up").fontWeight(.heavy).foregroundColor(Color("CustomDarkGreenColor")).font(.system(size: 18))
}
                }.padding(.top,16)

                Spacer()
                
            }
        }
        
        
    }
    
    

}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
