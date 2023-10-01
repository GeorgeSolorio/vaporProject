//
//  TemplateRepresentable.swift
//
//
//  Created by George Solorio on 9/30/23.
//

import Vapor
import SwiftSgml

public protocol TemplateRepresentable {
    
    @TagBuilder
    func render(_ req: Request) -> Tag
}
