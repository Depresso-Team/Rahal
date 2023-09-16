//
//  ViewProfileSubView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct ViewProfileSubView: View {
    var body: some View {
        VStack{
            VStack{
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .cornerRadius(70)

                Text("Abdelrahman Esmail").bold().font(.system(size: 24))
                    .padding(.top,5)
                    .padding(.bottom,20)
            }
        }
    }
}

struct ViewProfileSubView_Previews: PreviewProvider {
    static var previews: some View {
        ViewProfileSubView()
    }
}
