//
//  HelloWorldView.swift
//  organizer
//
//  Created by Sergei Cherednichenko on 2/14/26.
//

import SwiftUI

struct HelloWorldView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! SwiftUI style")
        }
        .padding()
    }
}
