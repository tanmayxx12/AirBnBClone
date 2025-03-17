//
//  ListingItemView.swift
//  AirBnBClone
//
//  Created by Tanmay . on 17/03/25.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                // images
                TabView {
                    ForEach(0...3, id: \.self) { image in
                        Rectangle()
                            .fill(.gray)
                    }
                }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .tabViewStyle(.page)
                
                // listing details:
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Miami, Florida")
                            .fontWeight(.bold)
                        
                        Text("12 mi away")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        Text("Nov 3 - 10")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        HStack(spacing: 4) {
                            Text("$567")
                                .fontWeight(.bold)
                                
                            Text("night")
                        }
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                        Text("4.8")
                            .fontWeight(.bold)
                    }
                    
                }
                .font(.footnote)
                
            }
            
            
        }
    }
}

#Preview {
    ListingItemView()
}
