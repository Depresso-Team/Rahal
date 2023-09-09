//
//  SlideShow.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct SlideShow: View {
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    @State private var totalIndex = 3
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ZStack {
                Image("alAzharMosque")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 192)
                    .cornerRadius(16)
                    .buttonStyle(PlainButtonStyle())
                
                Text("Al Azhar Mousque")
                    .fontWeight(.heavy)
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .padding(8)
                    .offset(x: -60, y: 70)
            }
            .tag(0)
            
            ZStack {
                Image("abuSimbleTemple")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 192)
                    .cornerRadius(16)
                    .buttonStyle(PlainButtonStyle())
                
                Text("Abu Simble Temple")
                    .fontWeight(.heavy)
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .padding(8)
                    .offset(x: -60, y: 70)
            }
            .tag(1)
            
            ZStack {
                VStack(alignment: .leading) {
                    ZStack {
                        Image("sphinx")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width - 20, height: 192)
                            .cornerRadius(16)
                            .buttonStyle(PlainButtonStyle())
                        
                        Text("Sphinx")
                            .fontWeight(.heavy)
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .padding(8)
                            .offset(x: -130, y: 70)
                    }
                }
            }
            .tag(2)
            
            
        } //TabView
        .tabViewStyle(.page)
        .animation(.spring())
        .frame(width: UIScreen.main.bounds.width - 20, height: 192)
        .onReceive(self.timer) { _ in
            self.currentIndex = (self.currentIndex + 1) % self.totalIndex
        }
        .onChange(of: self.currentIndex) { index in
            print("change currentIndex:\(index)")
        }
    }
    }


struct SlideShow_Previews: PreviewProvider {
    static var previews: some View {
        SlideShow()
    }
}
