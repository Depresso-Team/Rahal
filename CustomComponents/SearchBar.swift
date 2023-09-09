//
//  SearchBar.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding()
                .fontWeight(.semibold)
                .font(.system(size: 20))
            Text("Search")
                .fontWeight(.semibold)
                .padding(.vertical)
            Spacer()
            Image(systemName: "slider.horizontal.3").padding(.horizontal)
                .font(.system(size: 20))
        }.foregroundColor(Color.secondary.opacity(0.5))
        .background(Color("CustomBgGreenColor").opacity(0.07)).cornerRadius(10)
        .shadow(radius: 1)
        .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
