//
//  ViewProfileSubView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct ViewProfileSubView: View {
    var body: some View {
        VStack {
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 128, height: 128)
          
              Text("""
          Copyright © Depresso Team
          All right reserved
          Explore Egypt ♡ Like a local
          """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
      }
    }

struct ViewProfileSubView_Previews: PreviewProvider {
    static var previews: some View {
        ViewProfileSubView()
    }
}
