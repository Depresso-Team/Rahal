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
            VStack {
                VStack{
                    // USER PROFILE IMAGE
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
                    // LIST
                    VStack(spacing: 8) {
                        ForEach(profileData) { row in
                            NavigationLink {
                                
                            } label: {
                                HStack {
                                    row.image
                                        .foregroundColor(Color("CustomDarkGreenColor"))
                                        .font(.system(size: 20))
                                        .padding(6)
                                    Text(row.title)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "arrow.right").foregroundColor(.secondary)
                                }
                            }
                            Divider()
                        }
                        HStack{
                            Spacer()
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                            Text("Logout")
                        }.foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                            .padding(8)
                    }   .frame(width: UIScreen.main.bounds.width - 80,height: UIScreen.main.bounds.height * 0.44)
                        .padding(.horizontal)
                        .padding(.vertical,20)
                        .background(.secondary.opacity(0.1))
                        .cornerRadius(50)
                        .cornerRadius(40)
                }

                
                //            VStack{
                //                Spacer()
                //                VStack{
                //                    VStack (alignment: .center) {
                //                        // PAGES LIST
                //                        VStack (alignment: .leading){
                //                            HStack{
                //                                Image(systemName: "person").foregroundColor(Color("CustomDarkGreenColor"))
                //                                    .font(.system(size: 20))
                //                                Text("View profile")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                            Divider()
                //                            HStack{
                //                                Image(systemName: "person.wave.2.fill").foregroundColor(Color("CustomDarkGreenColor"))
                //                                Text("Settings")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                            Divider()
                //                            HStack{
                //                                Image(systemName: "lock.fill").foregroundColor(Color("CustomDarkGreenColor"))
                //                                Text("Privacy Policy")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                        }
                //                        Divider()
                //                        VStack (alignment: .leading){
                //                            HStack{
                //                                Image(systemName: "megaphone.fill").foregroundColor(Color("CustomDarkGreenColor"))
                //                                Text("Contact US")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                            Divider()
                //                            HStack{
                //                                Image(systemName: "star.fill").foregroundColor(Color("CustomDarkGreenColor"))
                //                                Text("Rate US")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                            Divider()
                //                            HStack{
                //                                Image(systemName: "trash.fill").foregroundColor(Color("CustomDarkGreenColor"))
                //                                Text("View profile")
                //                                    .fontWeight(.semibold)
                //                                    .font(.system(size: 16))
                //                                Spacer()
                //                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                //                            }.padding(6)
                //                            Divider()
                //                        }
                                        // LOGOUT BUTTON

//                                    }
//                                    .frame(width: UIScreen.main.bounds.width - 80,height: UIScreen.main.bounds.height * 0.45)
//                                    .padding(.horizontal)
//                                    .padding(.vertical,20)
//                                    .background(.secondary.opacity(0.1))
//                                    .cornerRadius(50)
//                                    .cornerRadius(40)
                //                }
                //            }
            }
        }
    }
}


struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
