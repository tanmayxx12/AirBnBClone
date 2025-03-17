//
//  ExploreView.swift
//  AirBnBClone
//
//  Created by Tanmay . on 16/03/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 25) {
                    ForEach(0...10, id: \.self) { image in
                        ListingItemView()

                        
                        
                    }
                }
                .padding(6)
            }
        }
    }
}

#Preview {
    ExploreView()
}
