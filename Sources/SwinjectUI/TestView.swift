//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2021-07-07.
//

import SwiftUI

@available(iOS 13.0, *)
struct TestView: View {

    @Environment(\.swinjectAssembler) var assembler
    @Environment(\.swinjectContainer) var container

    @Swinject(Dog.self) var dog

    var body: some View {
        Text("Hello World")
            .onTapGesture {
                dog?.bark()
            }
    }
}
