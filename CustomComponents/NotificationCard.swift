//
//  NotificationCard.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct NotificationCard: View {
    // MARK: - PROPERTIES
    let image: String
    let notificationName: String
    let notificationDetails: String
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Image("notfy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 112, height: 92)
                    .cornerRadius(16)
                
                VStack (alignment: .leading) {
                    HStack{
                        Text(notificationName).bold().font(.system(size: 20))
                            .padding(.vertical,2)
                        Spacer()
                    }
                    
                    Text(notificationDetails)
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width,height: 106)
        }
    }
    }


struct NotificationCard_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCard(image: "pyramids", notificationName: "Don't Miss it", notificationDetails: "Khan Al-Khalily is back with special offer, 200.LE for one and 300.LE for two, HERY UP!.")
    }
}
