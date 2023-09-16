//
//  OnBoardingThreeView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct OnBoardingThreeView: View {
    var body: some View {
        ZStack {
            Image("Nile") // Background Image
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Lets start our Journey...")
                    .font(.largeTitle)
                    .padding()

                Text("Who are you ?")
                    .font(.title)
                    .padding(.horizontal)

                Spacer()

                VStack{
                    // SELECT USER MODE
                    VStack (spacing: 22) {
                        Button{
                            
                            }
                            
                        label: {
                            Text("User").fontWeight(.semibold).foregroundColor(.black)
                                .font(.system(size: 18))
                                .frame(width: UIScreen.main.bounds.width - 120,height: 52).font(.system(size: 26))
                            
                            
                        }.background(Color.white).cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                        
                        Button{
                            
                            }
                            
                        label: {
                            Text("Guide").fontWeight(.semibold).foregroundColor(.black)
                                .font(.system(size: 18))
                                .frame(width: UIScreen.main.bounds.width - 120,height: 52).font(.system(size: 26))
                            
                            
                        }.background(Color.white).cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                    }
                    
                    
                    // LOGIN BUTTON
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
                    }.padding(.top,16)
                }
            }
            .padding()
            .background(BlurView(style: .systemUltraThinMaterial))
            .frame(width: 320, height: UIScreen.main.bounds.height*0.45)
            .cornerRadius(20)
        }
    }
}

struct OnBoardingThreeView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingThreeView()
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
