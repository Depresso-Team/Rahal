//
//  NavigationBar.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 10/09/2023.
//

import SwiftUI



struct NavigationBar: View {
    // MARK: - PROPERTIES
    var tabSelection:Int = 1
    @Namespace private var animationNamespace
    let tabBarItems: [(image:String,title:String)] =
    [
        ("bookmark","Bookmark"),
        ("person","Profile"),
    ]
    
    // MARK: - BODY
    var body: some View {
        HStack {
            HStack{
                Button{}
                label: {
                    Image(systemName: "house")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)

                    Text("Home").fontWeight(.semibold)
                }.foregroundColor(.white)
                .background(
                    Color("CustomBgGreenColor")
                    .frame(width: 104,height: 46)
                    .cornerRadius(16))
            }.shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
            Spacer()
            ForEach(0..<2){ index in
                Button{}
                label: {
                    Spacer()
                    Image(systemName: tabBarItems[index].image)
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                    Spacer()
                }.foregroundColor(.secondary)
            }
        }
        .frame(height: 66)
        .padding(52)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(tabSelection: 1)
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
