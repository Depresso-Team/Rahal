//
//  UserProfileView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct ProfileItems: Identifiable {
    let id: Int
    let image: Image
    let title: String
}

struct UserProfileView: View {
    
    @State private var showLogoutAction: Bool = false
    @State private var showDeleteAccount: Bool = false
    
    private let profileData: [ProfileItems] = [
        .init(id: 1, image: Image(systemName: "person"), title: "View profile"),
        .init(id: 2, image: Image(systemName: "slider.horizontal.3"), title: "Settings"),
        .init(id: 3, image: Image(systemName: "lock.fill"), title: "Privacy Policy"),
        .init(id: 4, image: Image(systemName: "megaphone.fill"), title: "Contact US"),
        .init(id: 5, image: Image(systemName: "star.fill"), title: "Rate Us"),
        .init(id: 6, image: Image(systemName: "trash.fill"), title: "Delete")
    ]
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 240)
                    VStack{
                        // USER PROFILE IMAGE
                        VStack{
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(Color("CustomDarkGreenColor"))
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                            
                            Text("Abdelrahman Esmail").bold().font(.system(size: 24))
                                .padding(.top,5)
                                .padding(.bottom,20)
                        }
                        // LIST
                        VStack(spacing: 8) {
                            ForEach(profileData) { row in
                                NavigationLink {
                                    ViewProfileSubView()
                                } label: {
                                    RowItem(image: row.image, title: row.title)
                                }
                                Divider()
                            }
                            Button {
                                showLogoutAction = true
                            } label: {
                                HStack {
                                    Spacer()
                                    Image(systemName: "rectangle.portrait.and.arrow.right")
                                    Text("Logout")
                                }
                            }
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                            .padding(8)
                        }
                        .frame(width: UIScreen.main.bounds.width - 80)
                        .padding(.vertical, 32)
                        .padding(.horizontal)
                        .background(.secondary.opacity(0.1))
                        .cornerRadius(48)
                    }
                    .offset(y: -50)
                    .padding(.bottom, 48)
                }
                .actionSheet(isPresented: $showLogoutAction) {
                    ActionSheet(title: Text("Woops"), message: Text("Are you sure you want logout?"), buttons: [
                        .destructive(Text("Logout"),
                                     action: {
                                         print("Logout")
                                     }),
                        .cancel(Text("Cancel"))
                    ])
                }
                .actionSheet(isPresented: $showLogoutAction) {
                    ActionSheet(title: Text("Woops"), message: Text("Are you sure you want logout?"), buttons: [
                        .destructive(Text("Logout"),
                                     action: {
                                         print("Logout")
                                     }),
                        .cancel(Text("Cancel"))
                    ])
                }
            }
            .ignoresSafeArea()
        }
    }
}


struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}


struct RowItem: View {
    var image: Image
    var title: String
    
    var body: some View {
        HStack {
            image
                .foregroundColor(Color("CustomDarkGreenColor"))
                .font(.system(size: 20))
                .padding(6)
            Text(title)
                .fontWeight(.semibold)
                .font(.system(size: 16))
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "arrow.right").foregroundColor(.secondary)
        }
    }
}
