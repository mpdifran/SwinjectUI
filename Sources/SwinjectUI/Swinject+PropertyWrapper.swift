//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2021-07-07.
//

import Foundation
import SwiftUI
import Swinject

@available(iOS 13.0, *)
@propertyWrapper
struct Swinject<Service> {
    var wrappedValue: Service?

    @Environment(\.swinjectAssembler) var assembler: Assembler
    @Environment(\.swinjectContainer) var container: Container

    init(_ serviceType: Service.Type) {
        let assemblerService = assembler.resolver.resolve(serviceType)
        let containerService = container.resolve(serviceType)

        wrappedValue = containerService ?? assemblerService
    }
}
