//
//  ToastTest.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 08.11.24.
//

import SwiftUI

struct NoteView: View {
    @State private var showToast1 = false
    @State private var showToast2 = false
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        VStack {
            Button("Slide-Benachrichtigung") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    showToast1 = true
                    
                } completion: {
                    sleep(1)
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showToast1 = false
                    }
                }
            }
        }
        .overlay(
            showToast1 ? Text("Das ist eine Benachrichtigung welche automatisch wieder verschwindet.")
                .padding()
                .background(Color.black.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(8)
                .transition(.asymmetric(
                    insertion: .slide,
                    removal: .slide
                ))
                .padding(.bottom, 50)
                .frame(width: 300, height: 150)
            : nil,
            alignment: .bottom
        )
        
        VStack {
            Button("Dreh-Benachrichtigung") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    showToast2 = true
                    rotationAngle = 360
                } completion: {
                    sleep(1)
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showToast2 = false
                        rotationAngle = 0
                    }
                }
            }
        }
        .overlay(
            showToast2 ? Text("Das ist eine Benachrichtigung welche automatisch wieder verschwindet.")
                .padding()
                .background(Color.black.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(8)
                .rotationEffect(.degrees(rotationAngle))
                .opacity(showToast2 ? 1 : 0)
                .padding(.top, 50)
                .frame(width: 300, height: 150)
            : nil,
            alignment: .top
        )
        
        
    }
}

#Preview {
    NoteView()
}
