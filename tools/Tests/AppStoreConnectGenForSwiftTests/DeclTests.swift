import XCTest
@testable import AppStoreConnectGenForSwift

private func render<D: Decl>(_ decl: D) -> String {
    SourceFile(decl: decl).render()
}

class DeclTests: XCTestCase {
    func testStruct() {
        let expected = StructDecl(
            access: .public,
            name: "Foo",
            inheritances: ["Hashable"],
            subscripts: [
                SubscriptDecl(
                    access: .private,
                    arguments: [
                        ArgumentDecl(
                            name: "bar",
                            type: "Int?",
                            initial: "nil"
                        )
                    ],
                    returnType: "Int?",
                    getter: "nil"
                ),
                SubscriptDecl(
                    access: .public,
                    arguments: [],
                    returnType: "String",
                    getter: #""foobar""#
                ),
                SubscriptDecl(
                    access: .internal,
                    generics: "T: Hashable",
                    arguments: [
                        ArgumentDecl(
                            name: "relation", alt: "_", type: "Relation<T>"
                        )
                    ],
                    returnType: "T",
                    getter: "fatalError()",
                    setter: "fatalError()"
                )
            ],
            members: [
                MemberDecl(
                    access: .public,
                    modifier: .static,
                    keyword: .var,
                    name: "staticFoo",
                    type: "String",
                    value: .computed(#""Hello world""#)
                ),
                MemberDecl(
                    access: .private,
                    keyword: .let,
                    name: "bar",
                    type: "Int",
                    value: .assignment("0")
                ),
                MemberDecl(
                    access: .private,
                    keyword: .var,
                    name: "baz",
                    type: "String",
                    doc: """
                    this is doc comment.
                    this is doc comment.
                    """
                )
            ],
            initializers: [
                InitializerDecl(
                    access: .public,
                    arguments: [
                        ArgumentDecl(
                            name: "baz",
                            type: "String"
                        )
                    ],
                    body: """
                    self.baz = baz
                    """
                )
            ],
            functions: [
                FunctionDecl(
                    access: .public,
                    name: "hash",
                    arguments: [
                        ArgumentDecl(
                            name: "hasher",
                            alt: "into",
                            type: "inout Hasher"
                        )
                    ],
                    returnType: nil,
                    body: """
                    hasher.combine(baz)
                    """
                )
            ],
            extensions: [
                EnumDecl(
                    access: .private,
                    name: "Enum",
                    cases: [
                        CaseDecl(
                            name: "none"
                        ),
                        CaseDecl(
                            name: "value",
                            value: .arguments([ArgumentDecl(name: "value", type: "Int")])
                        )
                    ],
                    extensions: [
                        EnumDecl(
                            access: .private,
                            name: "EnumNested1",
                            cases: [],
                            extensions: [
                                EnumDecl(
                                    access: .private,
                                    name: "EnumNested2",
                                    cases: []
                                )
                            ]
                        )
                    ]
                )
            ]
        )
        XCTAssertEqual(render(expected), """
        public struct Foo: Hashable {
            private subscript (bar: Int? = nil) -> Int? {
                nil
            }

            public subscript () -> String {
                "foobar"
            }

            internal subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { fatalError() }
                set { fatalError() }
            }

            public static var staticFoo: String {
                "Hello world"
            }

            private let bar: Int = 0

            /// this is doc comment.
            /// this is doc comment.
            private var baz: String

            public init(baz: String) {
                self.baz = baz
            }

            public func hash(into hasher: inout Hasher) {
                hasher.combine(baz)
            }
        }

        extension Foo {
            private enum Enum {
                case none
                case value(value: Int)
            }
        }

        extension Foo.Enum {
            private enum EnumNested1 {}
        }

        extension Foo.Enum.EnumNested1 {
            private enum EnumNested2 {}
        }
        """)
    }

    func testExtension() {
        let expected = render(
            ExtensionDecl(
                name: "Foo.Bar",
                body: [
                    FunctionDecl(
                        access: .public,
                        name: "f",
                        arguments: [],
                        returnType: "Int",
                        body: """
                        return 100
                        """
                    ),
                    EnumDecl(
                        access: .private,
                        name: "Enum",
                        cases: [
                            CaseDecl(
                                name: "none"
                            ),
                            CaseDecl(
                                name: "value",
                                value: .arguments([ArgumentDecl(name: "value", type: "Int")])
                            )
                        ],
                        nested: [
                            EnumDecl(
                                access: .internal,
                                name: "InnerEnum",
                                cases: [],
                                extensions: [
                                    EnumDecl(
                                        access: .private,
                                        name: "EnumNested1",
                                        cases: [],
                                        extensions: [
                                            EnumDecl(
                                                access: .private,
                                                name: "EnumNested2",
                                                cases: []
                                            )
                                        ]
                                    )
                                ]
                            )
                        ]
                    )
                ]
            )
        )
        XCTAssertEqual(expected, """
        extension Foo.Bar {
            public func f() -> Int {
                return 100
            }

            private enum Enum {
                case none
                case value(value: Int)

                internal enum InnerEnum {}
            }
        }

        extension Foo.Bar.Enum.InnerEnum {
            private enum EnumNested1 {}
        }

        extension Foo.Bar.Enum.InnerEnum.EnumNested1 {
            private enum EnumNested2 {}
        }
        """)
    }
}
