//
//  CalculatorButton.swift
//  CalcUI
//
//  Created by Ryan Kanno on 12/30/21.
//

import SwiftUI

enum CalculatorButton: String {
   case zero, one, two, three, four, five, six, seven, eight, nine, decimal
   case equals, plus, minus, multiply, divide
   case ac, plusMinus, percent
   
   var backgroundColor: Color {
      switch self {
      case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
         return Color(.darkGray)
      case .ac, .plusMinus, .percent:
         return Color(.lightGray)
      default:
         return Color(.orange)
      }
   }
   
   var title: String {
      switch self {
      case .decimal: return "."
      case .zero: return "0"
      case .one: return "1"
      case .two: return "2"
      case .three: return "3"
      case .four: return "4"
      case .five: return "5"
      case .six: return "6"
      case .seven: return "7"
      case .eight: return "8"
      case .nine: return "9"
      case .equals: return "="
      case .plus: return "+"
      case .minus: return "-"
      case .multiply: return "X"
      case .divide: return "÷"
      case .ac: return "AC"
      case .plusMinus: return "+/-"
      case .percent: return "%"
      }
   }
}
