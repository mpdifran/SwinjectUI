//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2021-07-07.
//

import SwiftUI
import Swinject

@available(iOS 13.0, *)
func test() {
    let assembler = Assembler()
    let container = Container()

    container.register(Dog.self, factory: { (_) in Dog() })

    let view = TestView()
        .environment(\.swinjectAssembler, assembler)
        .environment(\.swinjectContainer, container)
}
