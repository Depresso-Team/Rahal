//
//  RegistrationView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct RegistrationView: View {
    // MARK: - PROPERTIES
    @StateObject var vm = SignupViewModel.shared
    var isGuide: Bool
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView (.vertical, showsIndicators: false) {
                VStack{
                    // LOGO
                    Image("rahal-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 152)
                        .padding(.top,48)
                    
                    // FORM FIELDS
                    VStack (alignment: .leading, spacing: 18) {
                        Text("Sign up").font(.title).fontWeight(.bold).foregroundColor(Color("CustomDarkGreenColor"))
                        
                        CurvedTextField(text: $vm.fullName, placeholder: "",title: "Full name")
                        CurvedTextField(text: $vm.email, placeholder: "",title: "Email Address").textInputAutocapitalization(.none)
                        
                        CurvedTextField(text: $vm.phoneNumber, placeholder: "",title: "Phone Number")
                        CurvedTextField(text: $vm.country, placeholder: "",title: "Country")
                        
                        CurvedTextField(text: $vm.password, placeholder: "", title: "Password",isSecureField: true)
                        CurvedTextField(text: $vm.confirmPassword, placeholder: "", title: "Confirm Password",isSecureField: true)
                        
                        CurvedTextField(text: $vm.language, placeholder: "",title: "Language")
                        
                    }
                    .padding(.horizontal)
                    .padding(.top,28)
                    
                    VStack (alignment: .leading, spacing: 10){
                        Text("Address").padding(.leading,5).font(.system(size: 18)).fontWeight(.semibold)
                        CurvedTextField(text: $vm.countryCity, placeholder: "",title: "Country / City")
                        CurvedTextField(text: $vm.streetNumber, placeholder: "",title: "Street Number")
                        CurvedTextField(text: $vm.area, placeholder: "",title: "Area")
                        CurvedTextField(text: $vm.addressLabel, placeholder: "",title: "Address Label")
                    }
                    .padding(.horizontal)
                    .padding(.top,28)
                    
                    // SIGN UP BUTTON
                    Button{
                        vm.register(isGuide: isGuide)
                        vm.responseHandler = { result in
                            switch result {
                            case .success(let message):
                                // TODO: Go to home screen
                                print(message)
                            case .failure(let error):
                                // TODO: Show alert message
                                print(error.localizedDescription)
                            }
                        }
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
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(isGuide: false)
    }
}
