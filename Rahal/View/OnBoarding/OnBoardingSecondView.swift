//
//  OnBoardingSecondView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct OnBoardingSecondView: View {
    var body: some View {
        VStack (alignment: .center){
            Image("Nile")
                .aspectRatio(contentMode: .fill)
                .frame(width: 345, height: 410)
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
                .shadow(color: Color.black.opacity(0.35), radius: 6, x: 2, y: 2)
            
            Text("Enjoy")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.black)
                .fontWeight(.heavy)
                .padding()
            
            Text("Egypt Civilization, reveals the secrets of the past and offers you an unforgettable tourism experience.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            
            Button(action: {
                 
             }) {
                 ZStack {
                     Circle()
                         .fill(Color("CustomDarkGreenColor")) // Change the button's background color as needed
                         .frame(width: 56, height: 56)
                     
                     Circle()
                         .stroke(Color("CustomDarkGreenColor"), lineWidth: 2) // Customize the border color and width
                         .frame(width: 66, height: 66)
                     
                     Image(systemName: "arrow.right")
                         .font(.system(size: 22))
                         .foregroundColor(.white)
                 }.padding()
             }
            
            
        }.padding()
    }
}

struct OnBoardingSecondView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSecondView()
    }
}
