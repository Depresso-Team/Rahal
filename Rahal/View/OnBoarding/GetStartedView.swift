//
//  GetStartedView.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("StartScreen")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    VStack {
                        Text("Lets start our Journey...")
                            .font(.largeTitle)
                            .minimumScaleFactor(0.5)
                            .padding()
                        Text("Who are you ?")
                            .font(.title)
                            .padding(.horizontal)
                    }
                    .padding(.top, 32)
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack{
                        // SELECT USER MODE
                        VStack (spacing: 22) {
                            // User button
                            NavigationLink {
                                RegistrationView(isGuide: false)
                            } label: {
                                Text("User").fontWeight(.semibold).foregroundColor(.black)
                                    .font(.system(size: 18))
                                    .frame(width: UIScreen.main.bounds.width - 120,height: 52).font(.system(size: 26))
                            }
                            .background(Color.white).cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                            
                            // Guide button
                            NavigationLink {
                                RegistrationView(isGuide: true)
                            } label: {
                                Text("Guide").fontWeight(.semibold).foregroundColor(.black)
                                    .font(.system(size: 18))
                                    .frame(width: UIScreen.main.bounds.width - 120,height: 52).font(.system(size: 26))
                            }
                            .background(Color.white).cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                            
                            // LOGIN BUTTON
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 20)
                        HStack (spacing: 2){
                            Text("Do you have an account ?").foregroundColor(.black)
                            NavigationLink{
                                LoginView()
                                    .navigationBarBackButtonHidden(true)
                            }label: {
                                Text("Login")
                                    .foregroundColor(.black)
                                    .fontWeight(.heavy)
                                    .font(.system(size: 18))
                            }
                        }
                        .padding(.vertical,16)
                    }
                    .padding()
                    .background(BlurView(style: .systemUltraThinMaterial))
                    .cornerRadius(16)
                    Spacer()
                }
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
}
