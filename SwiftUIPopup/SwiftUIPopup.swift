//
//  SwiftUIPopup.swift
//  SwiftUIPopup
//
//  Created by Angelos Staboulis on 2/8/23.
//

import SwiftUI

struct SwiftUIPopup: View {
    @Binding var present:Bool
    @Binding var color:Color
    var body: some View {
        if present && color == .white{
            ZStack{
                color
                VStack{
                    VStack{
                    Text("Popup Title").foregroundColor(.black)
                    }
                    Divider().padding(-10.0)
                    VStack{
                    Text("Popup Informational Message").foregroundColor(.black)
                    }.padding(15.0)
                    Button {
                        present = false
                    } label: {
                        Text("OK").foregroundColor(.black)
                    }.background {
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 200, height: 50.0, alignment: .center)
                            .foregroundColor(.gray)
                        
                    }
                }
            }.frame(width: 300.0, height: 190.0, alignment: .center)
                .border(.black, width: 1.0)
                .cornerRadius(3)
        }else if present == true && color != .white{
            ZStack{
                color
                VStack{
                    VStack{
                    Text("Popup Title").foregroundColor(.white)
                    }
                    Divider().padding(-10.0).hidden()
                    VStack{
                    Text("Popup Informational Message").foregroundColor(.white)
                    }
                    Divider().padding(15.0).hidden()
                    Button {
                        present = false
                    } label: {
                        Text("OK").foregroundColor(.white)
                    }.background {
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 200, height: 50.0, alignment: .center)
                            .foregroundColor(.gray)
                        
                    }
                }
            }.frame(width: 300.0, height: 190.0, alignment: .center)
                .border(.black, width: 1.0)
                .cornerRadius(3)
        }
    }
}
