import Vapor
import SwiftHtml

struct MyTemplate: TemplateRepresentable {
    let title: String
    
    func render(_ req: Request) -> Tag {
        Html {
            Head {
                Title(title)
            }
            Body {
                H1(title)
            }
        }
    }
}

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> Response in
        req.template.renderHtml(MyTemplate(title: "Hello, World!"))
    }
}
