//
//  ContentView.swift
//  CICDApp
//
//  Created by Kimi on 23/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value = false

    var body: some View {
        VStack {
            Toggle("Input Value", isOn: $value)
            HStack {
                Text("Output Value")
                Spacer()
                Text(Bit.from(value).invert().description)
            }
        }
        .padding()
    }
}

enum Bit: CustomStringConvertible {
    case zero
    case one
                
    static func from(_ boolean: Bool) -> Bit {
        return boolean ? .one : .zero
    }
    
    func invert() -> Bit {
        return self == .zero ? .one : .zero
    }
    
    var description: String {
        self == .zero ? "0" : "1"
    }
}

#Preview {
    ContentView()
}
