//
//  ShakeExampleRepresentable.swift
//  Core Animation Test
//
//  Created by Süeda Tufan on 14.11.26.
//

import SwiftUI
import UIKit

struct ShakeExampleRepresentable:
    UIViewControllerRepresentable {

    func makeUIViewController(
        context: Context
    ) -> ShakeExampleViewController {

        return ShakeExampleViewController()
    }

    func updateUIViewController(
        _ uiViewController: ShakeExampleViewController,
        context: Context
    ) {
        
    }
}
