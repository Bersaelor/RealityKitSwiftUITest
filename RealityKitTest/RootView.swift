//
//  RootView.swift
//  RealityKitTest
//
//  Created by Konrad Feiler on 24.09.25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Text("Main View")

                NavigationLink("Open AR") {
                    ARContentView()
                }

                Spacer()
            }
        }
    }
}

#Preview {
    RootView()
}
