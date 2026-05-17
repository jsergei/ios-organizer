//
//  MainView.swift
//  organizer
//
//  Created by Sergei Cherednichenko on 2/14/26.
//

import SwiftUI

struct MainView: View {
    @State private var useSwiftUI = true
    
    var body: some View {
        VStack {
            // Framework toggle button
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        useSwiftUI.toggle()
                    }
                }) {
                    HStack {
                        Image(systemName: useSwiftUI ? "swift" : "hammer.fill")
                        Text(useSwiftUI ? "SwiftUI" : "UIKit")
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(.tint.opacity(0.1))
                    .foregroundStyle(.tint)
                    .cornerRadius(8)
                }
                .padding()
            }
            
            // Content area
            if useSwiftUI {
                HelloWorldView()
            } else {
                UIKitContainerView()
            }
            
            Spacer()
        }
    }
}

#Preview("Main View") {
    MainView()
}

#Preview("SwiftUI Implementation") {
    HelloWorldView()
}

#Preview("UIKit Implementation") {
    UIKitContainerView()
}
