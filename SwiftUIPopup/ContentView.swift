//
//  ContentView.swift
//  SwiftUIPopup
//
//  Created by Angelos Staboulis on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var present:Bool = false
    @State var color:Color = .blue
    var body: some View {
        VStack{
            Button {
                present.toggle()
            } label: {
                if present{
                    Text("Hide Popup")
                }else{
                    Text("Show Popup")
                }
            }.opacity(present ? 0.0 : 1.0)
                .background {
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 200, height: 50.0, alignment: .center)
                            .foregroundColor(present ? .clear : .orange)
                 }
            SwiftUIPopup(present:$present, color:$color )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
