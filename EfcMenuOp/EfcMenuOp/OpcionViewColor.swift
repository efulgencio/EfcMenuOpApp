//
//  OpcionViewColor.swift
//  EfcMenuOp
//
//  Created by efulgencio on 26/4/24.
//

import SwiftUI


struct OptionViewColor: View {
    
    typealias ActionHandler = () -> Void

    let colorBase: Color
    let colorBackGround: Color
    let icon: String
    let titleOption: String
    let handler: ActionHandler
    
    init(colorBase: Color = .yellow,
         colorBackGround: Color = .blue,
         titleOption: String = "Documentos",
         icon: String = "folder",
         handler: @escaping OptionViewColor.ActionHandler) {
        
        self.colorBase = colorBase
        self.colorBackGround = colorBackGround
        self.titleOption = titleOption
        self.icon = icon
        self.handler = handler
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                        circleColors
                }
                .padding(.leading, 0)
                Spacer()
            }
            .frame(width: 160, height: 60)
            .background(self.colorBackGround.opacity(0.8))
            .cornerRadius(5.0)
            
            opcionShow
        }
        .onTapGesture {
            handler()
        }
        .modifier(CustomShadowColor(colorShadow: self.colorBackGround))
        .border(Color.gray, width: 0.5)
    }
}

extension OptionViewColor {

    private var circleColors: some View {
        ZStack{
            Circle()
                .fill(self.colorBase.opacity(0.2))
                .frame(width: 60, height: 60)
            Circle()
                .fill(self.colorBase.opacity(0.6))
                .frame(width: 50, height: 50)
            Circle()
                .fill(self.colorBase.opacity(0.9))
                .frame(width: 40, height: 40)
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
        }
    }
    
    private var opcionShow: some View {
        Text(titleOption)
            .frame(width: 160, height: 70)
            .background(self.colorBase.opacity(0.6))
            .foregroundColor(.white)
            .bold()
    }

}

struct CustomShadowColor: ViewModifier {
    let colorShadow: Color
    
    init(colorShadow: Color) {
        self.colorShadow = colorShadow
    }
    
    func body(content: Content) -> some View {
        content
            .shadow(color: self.colorShadow.opacity(0.8), radius: 5, x: 0, y: 0)
            .shadow(color: self.colorShadow.opacity(0.8), radius: 5, x: 8, y: 8)
    }
}

#Preview {
    OptionViewColor() {
        print("Pulsada la opcion")
    }
}
