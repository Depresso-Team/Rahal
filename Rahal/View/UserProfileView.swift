//
//  UserProfileView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ZStack (alignment: .top) {
            VStack{
                Spacer()
                VStack{
                    VStack (alignment: .center) {
                        VStack (alignment: .leading){
                            HStack{
                                Image(systemName: "person").foregroundColor(Color("CustomDarkGreenColor"))
                                    .font(.system(size: 20))
                                Text("View profile")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
                            Divider()
                            HStack{
                                Image(systemName: "person.wave.2.fill").foregroundColor(Color("CustomDarkGreenColor"))
                                Text("Settings")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
                            Divider()
                            HStack{
                                Image(systemName: "lock.fill").foregroundColor(Color("CustomDarkGreenColor"))
                                Text("Privacy Policy")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
                        }
                        
                        Divider()
                        
                        VStack (alignment: .leading){
                            HStack{
                                Image(systemName: "megaphone.fill").foregroundColor(Color("CustomDarkGreenColor"))
                                Text("Contact US")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
                            Divider()
                            HStack{
                                Image(systemName: "star.fill").foregroundColor(Color("CustomDarkGreenColor"))
                                Text("Rate US")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
                            Divider()
                            HStack{
                                Image(systemName: "trash.fill").foregroundColor(Color("CustomDarkGreenColor"))
                                Text("View profile")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "arrow.right").foregroundColor(.secondary)
                            }.padding(6)
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
                    }
                    .frame(width: UIScreen.main.bounds.width - 20,height: UIScreen.main.bounds.height * 0.6)
                    .padding(.horizontal)
                    .padding(.vertical,20)
                    .background(.secondary.opacity(0.1))
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 2, y: 2)
                }
                .background(.white)
            .cornerRadius(40)
            }

            
            VStack (alignment: .center){
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .cornerRadius(70)
                    
                Text("Abdelrahman Esmail").bold().font(.system(size: 20))
                    .padding(.top,5)
                    .padding(.bottom,20)
            }
            .offset(x:0,y: 110)
        }
    }
    }


struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
