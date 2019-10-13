//
//  ContentView.swift
//  Bitcoinvert
//
//  Created by Matt on 12/10/2019.
//  Copyright © 2019 im.co.fusion. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var gradient = [Color(red: 156 / 255, green: 39 / 255, blue: 176 / 255), Color(red: 255 / 255, green: 64 / 255, blue: 129 / 255)]
    @State var gradient2 = [Color(red: 255 / 255, green: 64 / 255, blue: 129 / 255), Color(red: 123 / 255, green: 31 / 255, blue: 162 / 255)]
    @State var gradient3 = [Color(red: 123 / 255, green: 31 / 255, blue: 162 / 255), Color(red: 32 / 255, green: 76 / 255, blue: 255 / 255)]
    @State var gradient4 = [Color(red: 32 / 255, green: 76 / 255, blue: 255 / 255), Color(red: 32 / 255, green: 158 / 255, blue: 255 / 255)]
    @State var gradient5 = [Color(red: 32 / 255, green: 158 / 255, blue: 255 / 255), Color(red: 90 / 255, green: 120 / 255, blue: 127 / 255)]
    @State var gradient6 = [Color(red: 90 / 255, green: 120 / 255, blue: 127 / 255), Color(red: 58 / 255, green: 255 / 255, blue: 217 / 255)]
    @State var gradient7 = [Color(red: 58 / 255, green: 255 / 255, blue: 217 / 255), Color(red: 156 / 255, green: 39 / 255, blue: 176 / 255)]
    
    @State var CurrentGradient = [Color(red: 156 / 255, green: 39 / 255, blue: 176 / 255), Color(red: 255 / 255, green: 64 / 255, blue: 129 / 255)]
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 8)
            .fill(LinearGradient(gradient: Gradient(colors: self.CurrentGradient), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1)))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: Alignment.center)
            .onTapGesture {
                self.Animate()
            }
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
    }
    
    func Animate() {
        withAnimation (.easeIn(duration: 3)){
            self.CurrentGradient = self.gradient2
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
