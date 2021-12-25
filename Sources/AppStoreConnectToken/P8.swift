import Foundation

public struct P8 {
    public enum Error: Swift.Error {
        case invalidP8Format
        case invalidASN1Format
    }

    let content: String

    public init(_ string: String) {
        content = string
    }
}

extension P8 {
    /// https://luca.ntop.org/Teaching/Appunti/asn1.html
    /// https://developer.apple.com/forums/thread/128616
    var privateKey: Data {
        get throws {
            guard var data = Data(base64Encoded: content.components(separatedBy: "\n")
                                    .filter { !$0.hasPrefix("-----") }
                                    .joined(separator: "")) else {
                throw P8.Error.invalidP8Format
            }

            func expected(_ asn1: ASN1Data, as tag: ASN1Data.Tag) throws -> ASN1Data {
                guard asn1.tag == tag else { throw P8.Error.invalidASN1Format }
                return asn1
            }

            var seq = try expected(.decode(from: &data), as: .raw(.sequence))
            data = seq.value

            _ = try expected(.decode(from: &data), as: .raw(.integer))  // version
            _ = try expected(.decode(from: &data), as: .raw(.sequence))  // sequence { oid, oid }
            let octed = try expected(.decode(from: &data), as: .raw(.octet_string))
            data = octed.value

            seq = try expected(.decode(from: &data), as: .raw(.sequence))  // ECPrivateKey
            data = seq.value

            _ = try expected(.decode(from: &data), as: .raw(.integer))  // version
            let privateKey = try expected(.decode(from: &data), as: .raw(.octet_string))
            return privateKey.value
        }
    }
}

// MARK: -
private struct ASN1Data {
    var tag: Tag
    var value: Data

    enum Tag: Equatable {
        case raw(RawTag)
        case contextSpecific(PrimitiveOrConstructed, tag: UInt8)

        init(rawValue: UInt8) throws {
            struct UnknownTag: Error {
                var value: UInt8
            }

            if let raw = RawTag(rawValue: rawValue) {
                self = .raw(raw)
            } else if rawValue & 0b1010_0000 == 0b1010_0000 {
                let tag = rawValue & 0b0001_1111
                self = .contextSpecific(.constructed, tag: tag)
            } else {
                throw UnknownTag(value: rawValue)
            }
        }

        enum RawTag: UInt8, Equatable {
            case bit_string = 0x03
            case boolean = 0x01
            case integer = 0x02
            case null = 0x05
            case object_id = 0x06
            case octet_string = 0x04
            case bmp_string = 0x1E
            case ia5_string = 0x16
            case printable_string = 0x13
            case teletex_string = 0x14
            case utf8_string = 0x0C
            case sequence = 0x30
            case set = 0x31
        }
        enum PrimitiveOrConstructed: Equatable {
            case constructed
        }
    }

    static func decode(from data: inout Data) throws -> Self {
        let tag = try data.consumeTag()
        let length = try data.consumeLength()
        let value = data.prefix(length)
        data = data.dropFirst(length)
        return Self.init(tag: tag, value: value)
    }
}

private extension Data {
    mutating func consumeTag() throws -> ASN1Data.Tag {
        return try ASN1Data.Tag(rawValue: pop())
    }

    mutating func consumeLength() throws -> Int {
        let first = try pop()
        if first & 0x80 == 0x00 {
            return Int(first)
        } else {
            let byteLength = Int(first & 0x7F)
            var length = 0
            for byte in prefix(byteLength) {
                length = length << 8 | Int(byte)
            }
            self = dropFirst(byteLength)
            return length
        }
    }

    private mutating func pop() throws -> Data.Element {
        guard let value = popFirst() else {
            throw P8.Error.invalidASN1Format
        }
        return value
    }
}
