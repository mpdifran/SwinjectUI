//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2021-07-07.
//

import SwiftUI
import Swinject

@available(iOS 13.0, *)
public extension EnvironmentValues {

    var swinjectAssembler: Assembler {
        get { self[AssemblerKey.self] }
        set { self[AssemblerKey.self] = newValue }
    }

    var swinjectContainer: Container {
        get { self[ContainerKey.self] }
        set { self[ContainerKey.self] = newValue }
    }
}

@available(iOS 13.0, *)
private struct AssemblerKey: EnvironmentKey {
    static let defaultValue = Assembler()
}

@available(iOS 13.0, *)
private struct ContainerKey: EnvironmentKey {
    static let defaultValue = Container()
}
