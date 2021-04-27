//
//  ContentView.swift
//  CustomTabView
//
//  Created by 米国梁 on 2021/4/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 1
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            TabView(selection: $selection) {
                Text("Tab Content 1").tag(1)
                Text("Tab Content 2").tag(2)
                Text("Tab Content 3").tag(3)
            }

            Divider()
            
            HStack(spacing: 0) {
                
                Button(action: {
                    selection = 1
                }, label: {
                    Text("Tab 1")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selection == 1 ? Color.white.ignoresSafeArea() : Color.red.ignoresSafeArea())
                        .foregroundColor(selection == 1 ? .black : .white)
                })
                
                
                Button(action: {
                    selection = 2
                }, label: {
                    Text("Tab 2")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selection == 2 ? Color.white.ignoresSafeArea() : Color.green.ignoresSafeArea())
                        .foregroundColor(selection == 2 ? .black : .white)
                })
                
                Button(action: {
                    selection = 3
                }, label: {
                    Text("Tab 3")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selection == 3 ? Color.white.ignoresSafeArea() : Color.blue.ignoresSafeArea())
                        .foregroundColor(selection == 3 ? .black : .white)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
