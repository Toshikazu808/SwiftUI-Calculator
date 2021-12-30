//
//  ContentView.swift
//  CalcUI
//
//  Created by Ryan Kanno on 12/26/21.
//

import SwiftUI

struct ContentView: View {
   @State private var display = "0"
   @State private var lastNumber = "0"
   @State private var lastOperator = ""
   @State private var operatorSelected = false
   
   private let buttons: [[CalculatorButton]] = [
      [.ac, .plusMinus, .percent, .divide],
      [.seven, .eight, .nine, .multiply],
      [.four, .five, .six, .minus],
      [.one, .two, .three, .plus],
      [.zero, .decimal, .equals]
   ]
   
   var body: some View {
      ZStack(alignment: .bottom) {
         Color.black.edgesIgnoringSafeArea(.all)
         
         VStack {
            HStack {
               Spacer()
               Text(display)
                  .font(.system(size: 64))
                  .foregroundColor(.white)
            }.padding()
            
            ForEach(buttons, id: \.self) { row in
               HStack {
                  ForEach(row, id: \.self) { button in
                     CalculatorButtonView(
                        display: $display,
                        lastNumber: $lastNumber,
                        lastOperator: $lastOperator,
                        operatorSelected: $operatorSelected,
                        button: button)
                  }
               }
            } //: LOOP
         }.padding(.bottom) //: VSTACK
      } //: ZSTACK
   } //:BODY
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
