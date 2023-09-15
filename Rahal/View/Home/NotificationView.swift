//
//  NotificationView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("New").bold().padding(10)
                    Spacer()
                }
                
                List {
                    NotificationCard(image: "user", notificationName: "Don't Miss it", notificationDetails: "Khan Al-Khalily is back with special offer, 200.LE for one and 300.LE for two, HERY UP!.")
                    NotificationCard(image: "user", notificationName: "Don't Miss it", notificationDetails: "Khan Al-Khalily is back with special offer, 200.LE for one and 300.LE for two, HERY UP!.")
                    NotificationCard(image: "user", notificationName: "Don't Miss it", notificationDetails: "Khan Al-Khalily is back with special offer, 200.LE for one and 300.LE for two, HERY UP!.")
                }
                .listStyle(GroupedListStyle())
            }
            .navigationTitle("Notification")
        }

    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
