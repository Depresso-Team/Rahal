//
//  RegistrationView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct RegistrationView: View {
    
    // MARK: - PROPERTIES
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var country: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var language: String = ""
    @State private var countryCity: String = ""
    @State private var area: String = ""
    @State private var streetNumber: String = ""
    @State private var addressLabel: String = ""
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                // LOGO
                Image("rahal-logo").resizable().scaledToFill().frame(width: 100,height: 152).padding(.top,48)
                
                // FORM FIELDS
                VStack (alignment: .leading, spacing: 18) {
                    Text("Sign up").font(.title).fontWeight(.bold).foregroundColor(Color("CustomDarkGreenColor"))
                    
                    CurvedTextField(text: $fullName, placeholder: "",title: "Full name")
                    CurvedTextField(text: $email, placeholder: "",title: "Email Address").textInputAutocapitalization(.none)
                    
                    CurvedTextField(text: $phoneNumber, placeholder: "",title: "Phone Number")
                    CurvedTextField(text: $country, placeholder: "",title: "Country")
                    
                    CurvedTextField(text: $password, placeholder: "", title: "Password",textFieldType: .password)
                    CurvedTextField(text: $confirmPassword, placeholder: "", title: "Confirm Password",textFieldType: .password)
                    
                    CurvedTextField(text: $language, placeholder: "",title: "Language")
                }
                .padding(.horizontal)
                .padding(.top,28)
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("Address").padding(.leading,5).font(.system(size: 18)).fontWeight(.semibold)
                    CurvedTextField(text: $countryCity, placeholder: "",title: "Country / City")
                    CurvedTextField(text: $streetNumber, placeholder: "",title: "Street Number")
                    CurvedTextField(text: $area, placeholder: "",title: "Area")
                    CurvedTextField(text: $addressLabel, placeholder: "",title: "Address Label")
                    
                }.padding(.horizontal)
                    .padding(.top,28)
                
                // SIGN UP BUTTON
                Button{
                    
                }label: {
                    Text("Sign up").fontWeight(.bold).foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 100,height: 52).font(.system(size: 24))
                        .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                    
                    
                }.background(Color("CustomDarkGreenColor")).cornerRadius(5).padding(.top,24)
                
                
                // LOGIN BUTTON
                HStack (spacing: 2){
                    Text("Do you have an account ?").foregroundColor(.black)
                    NavigationLink{
                        LoginView().navigationBarBackButtonHidden(true)
                    }label: {
                        Text("Login").fontWeight(.heavy).foregroundColor(Color("CustomDarkGreenColor")).font(.system(size: 18))
                    }
                }.padding(.top,16)
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
