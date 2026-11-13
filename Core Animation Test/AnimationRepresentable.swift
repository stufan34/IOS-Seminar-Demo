//
//  AnimationRepresentable.swift
//  MyApp
//
//  Created by Süeda Tufan on 08.11.26.
//



import SwiftUI
import UIKit

struct AnimationRepresentable:
    UIViewControllerRepresentable {

    func makeUIViewController(
        context: Context
    ) -> AnimationViewController {

        return AnimationViewController()
    }

    func updateUIViewController(
        _ uiViewController: AnimationViewController,
        context: Context
    ) {
        
    }
}
