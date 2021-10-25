//
//  ContentView.swift
//  CustomGrid
//
//  Created by Sopnil Sohan on 25/10/21.
//

import SwiftUI

struct ContentView: View {
    
    let spacing: CGFloat = 10
    @State private var numberOfCoulmns = 3
    
    var body: some View {
        
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfCoulmns)
        
        
        ScrollView {
            
            headerView
            
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(items) { item in
                    Button(action: {}) {
                        ItemView(item: item)
                    }
                    //the button animation looks weird now. So we will fix this now!
                    .buttonStyle(ItemButtonStyle(cornerRadius: 20))
                }
            }
            .padding(.horizontal)
            .offset(y: -50)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
    
    var headerView: some View {
        VStack {
            Image("mypic")
                .resizable()
                .frame(width: 110, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .onTapGesture {
                    numberOfCoulmns = numberOfCoulmns % 3 + 1
                }
            Text("Sabbir Hossain")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .medium, design: .rounded))
            
            Text("Change the world by being yourself")
                .foregroundColor(Color.white.opacity(0.7))
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
                
        }
        .frame(height: 350)
        .frame(maxWidth: .infinity)
        .background(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
