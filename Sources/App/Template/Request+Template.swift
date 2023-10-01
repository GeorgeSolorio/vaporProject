//
//  Request+Template.swift
//
//
//  Created by George Solorio on 9/30/23.
//

import Vapor

public extension Request {
    var template: TemplateRenderer { .init(self) }
}
