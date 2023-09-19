//
//  OnBoardingOneView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct OnbordingModel {
    let image: Image
    let title: String
    let descrption: String
}


struct OnBoardingOneView: View {
    let onbordingData: [OnbordingModel] = [
        .init(image: Image("khan El-khalel"),
              title: "Why Us",
              descrption: "If you are looking for a unique tourist destination rich in history, culture and nature, then Egypt is the right place for you."),
        .init(image: Image("Nile"),
              title: "Enjoy",
              descrption: "Egypt Civilization, reveals the secrets of the past and offers you an unforgettable tourism experience.")
    ]
    
    @State private var currentIndex: Int = 0
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack (alignment: .center){
                onbordingData[currentIndex].image
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 345, height: 410)
                    .cornerRadius(15)
                    .buttonStyle(PlainButtonStyle())
                    .shadow(color: Color.black.opacity(0.35), radius: 6, x: 2, y: 2)
                
                Text(onbordingData[currentIndex].title)
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
                    .padding()
                
                Text(onbordingData[currentIndex].descrption)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                if currentIndex == onbordingData.count - 1 {
                    NavigationLink(destination: GetStartedView()                  .navigationBarBackButtonHidden(true)) {
                        ZStack {
                            Circle()
                                .fill(Color("CustomDarkGreenColor"))
                                .frame(width: 56, height: 56)
                            
                            Circle()
                                .stroke(Color("CustomDarkGreenColor"), lineWidth: 2)
                                .frame(width: 66, height: 66)
                            
                            Image(systemName: "arrow.right")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                } else {
                    Button {
                        currentIndex += 1
                    } label: {
                        ZStack {
                            Circle()
                                .fill(Color("CustomDarkGreenColor"))
                                .frame(width: 56, height: 56)
                            
                            Circle()
                                .stroke(Color("CustomDarkGreenColor"), lineWidth: 2)
                                .frame(width: 66, height: 66)
                            
                            Image(systemName: "arrow.right")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
            }
            .padding()
        }
    }
}

struct OnBoardingOneView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingOneView()
    }
}
