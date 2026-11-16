//
//  AnimationView.swift
//  MyApp
//
//  Created by Süeda Tufan on 08.11.26.
//

import SwiftUI

struct AnimationView: View {
    @State private var changePosition = false
    @State private var changeSize = false
    @State private var changeOpacity = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Circle().fill(.red)
                .frame(width: 100, height: 100)
                .offset(y: changePosition ? 400 : 0)
                .onAppear {
                    withAnimation(.easeIn(duration : 0.8)
                        .repeatForever(autoreverses:true)){
                            changePosition = true
                        }
                }
            Circle().fill(.green)
                .frame(width: 100, height: 100)
                .scaleEffect(changeSize ? 1.5 : 1.0)
                .onAppear {
                    withAnimation(.easeIn(duration : 1)
                        .repeatForever(autoreverses:true)){
                            changeSize = true
                        }
                }
            Circle().fill(.blue)
                .frame(width: 100, height: 100)
                .opacity(changeOpacity ? 1 : 0.5)
                .onAppear {
                    withAnimation(.easeIn(duration : 1)
                        .repeatForever(autoreverses:true)){
                            changeOpacity = true
                        }
                }
        }
    }
    
}

#Preview {
    AnimationView()
}
