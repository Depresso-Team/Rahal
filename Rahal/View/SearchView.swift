//
//  SearchView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct SearchView: View {
    // MARK: - BODY
    var body: some View {
        VStack{
            SearchBar()
            HStack{
                Text("Recently Searched").font(.system(size: 18))
                Spacer()
                Image(systemName: "trash")
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal,30)
            .bold()
            
            HStack {
                Text("Giza Pyramids")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Text("Nubia")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Text("Abu Simble Temple")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Spacer()
                
            }.padding(.horizontal,30)
            .padding(.vertical,6)
            
            HStack {
                Text("Nubia")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Text("Giza Pyramids")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Text("Abu Simble Temple")
                    .font(.footnote)
                    .padding(10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .fixedSize()
                
                Spacer()
                
            }.padding(.horizontal,30)
            
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
