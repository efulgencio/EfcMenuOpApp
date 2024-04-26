//
//  MenuOpcionesViewColor.swift
//  EfcMenuOp
//
//  Created by efulgencio on 26/4/24.
//

import SwiftUI

struct OptMenu {
    let title: String
    let icon: String
}

let opTransportes = [
                        OptMenu(title: "Avion", icon: "airplane"),
                        OptMenu(title: "Coche", icon: "car"),
                        OptMenu(title: "Autobus", icon: "bus"),
                        OptMenu(title: "Tren", icon: "tram"),
                        OptMenu(title: "Tranvía", icon: "cablecar"),
                        OptMenu(title: "Barco", icon: "ferry")
                    ]

struct MenuOpcionesViewColor: View {
    
    let arrayOptions: [OptMenu]
    
    init(arrayOptions: [OptMenu] = opTransportes) {
        self.arrayOptions = arrayOptions
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                                                        Color.black.opacity(0.6),
                                                        Color.black.opacity(0.1)
                                                        ]
                                             ),
                                                        startPoint: .top,
                                                        endPoint: .bottom
                                            ).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack(spacing: 15) {
                    VStack(spacing: 15) {
                        OptionViewColor(colorBase: .blue,
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[0].title,
                                        icon: arrayOptions[0].icon) {
                            //TODO: action
                        }
                        OptionViewColor(colorBase: .yellow, 
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[1].title,
                                        icon: arrayOptions[1].icon) {
                            //TODO: action
                        }
                        OptionViewColor(colorBase: .red, 
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[2].title,
                                        icon: arrayOptions[2].icon) {
                            //TODO: action
                        }
                    }
                    VStack(spacing: 15) {
                        OptionViewColor(colorBase: .green,
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[3].title,
                                        icon: arrayOptions[3].icon) {
                            //TODO: action
                        }
                        OptionViewColor(colorBase: .purple, 
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[4].title,
                                        icon: arrayOptions[4].icon) {
                            //TODO: action
                        }
                        OptionViewColor(colorBase: .brown, 
                                        colorBackGround: .cyan,
                                        titleOption: arrayOptions[5].title,
                                        icon: arrayOptions[5].icon) {
                            //TODO: action
                        }
                    }
                }
            }
        }
        .navigationTitle("Menú Principal")
    }
}

#Preview {
    NavigationView() {
        MenuOpcionesViewColor()
    }

}
