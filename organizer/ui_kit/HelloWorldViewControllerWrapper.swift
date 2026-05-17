//
//  HelloWorldViewControllerWrapper.swift
//  organizer
//
//  Created by Sergei Cherednichenko on 2/14/26.
//

import SwiftUI

struct HelloWorldViewControllerWrapper: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> HelloWorldViewController {
        return HelloWorldViewController()
    }
    
    func updateUIViewController(_ uiViewController: HelloWorldViewController, context: Context) {
        // Update the view controller if needed when SwiftUI state changes
    }
}
