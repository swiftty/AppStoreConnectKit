// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersions.ById.CustomerReviews {
    public struct GET: Endpoint {
        public typealias Response = CustomerReviewsResponse

        public var path: String {
            "/v1/appStoreVersions/\(id)/customerReviews"
        }

        /// the id of the requested resource
        public var id: String

        public var parameters: Parameters = Parameters()

        public init(id: String) {
            self.id = id
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "exists[publishedResponse]",
                             value: parameters.exists[.publishedResponse].map { "\($0)" }),
                URLQueryItem(name: "fields[customerReviewResponses]",
                             value: parameters.fields[.customerReviewResponses]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[customerReviews]",
                             value: parameters.fields[.customerReviews]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[rating]",
                             value: parameters.filter[.rating]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[territory]",
                             value: parameters.filter[.territory]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" }),
                URLQueryItem(name: "sort",
                             value: parameters.sort?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of CustomerReviews as `CustomerReviewsResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(CustomerReviewsResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.AppStoreVersions.ById.CustomerReviews.GET {
    public struct Parameters: Hashable {
        public var exists: Exists = Exists()

        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        /// comma-separated list of sort expressions; resources will be sorted as specified
        public var sort: [Sort]?

        public struct Exists: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// filter by publishedResponse
                public static var publishedResponse: Relation<Bool?> {
                    .init(key: "exists[publishedResponse]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum CustomerReviewResponses: Hashable, Codable, RawRepresentable {
                case lastModifiedDate
                case responseBody
                case review
                case state
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .lastModifiedDate: return "lastModifiedDate"
                    case .responseBody: return "responseBody"
                    case .review: return "review"
                    case .state: return "state"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "lastModifiedDate": self = .lastModifiedDate
                    case "responseBody": self = .responseBody
                    case "review": self = .review
                    case "state": self = .state
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum CustomerReviews: Hashable, Codable, RawRepresentable {
                case body
                case createdDate
                case rating
                case response
                case reviewerNickname
                case territory
                case title
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .body: return "body"
                    case .createdDate: return "createdDate"
                    case .rating: return "rating"
                    case .response: return "response"
                    case .reviewerNickname: return "reviewerNickname"
                    case .territory: return "territory"
                    case .title: return "title"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "body": self = .body
                    case "createdDate": self = .createdDate
                    case "rating": self = .rating
                    case "response": self = .response
                    case "reviewerNickname": self = .reviewerNickname
                    case "territory": self = .territory
                    case "title": self = .title
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type customerReviewResponses
                public static var customerReviewResponses: Relation<[CustomerReviewResponses]?> {
                    .init(key: "fields[customerReviewResponses]")
                }

                /// the fields to include for returned resources of type customerReviews
                public static var customerReviews: Relation<[CustomerReviews]?> {
                    .init(key: "fields[customerReviews]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Territory: Hashable, Codable, RawRepresentable {
                case abw
                case afg
                case ago
                case aia
                case alb
                case and
                case ant
                case are
                case arg
                case arm
                case asm
                case atg
                case aus
                case aut
                case aze
                case bdi
                case bel
                case ben
                case bes
                case bfa
                case bgd
                case bgr
                case bhr
                case bhs
                case bih
                case blr
                case blz
                case bmu
                case bol
                case bra
                case brb
                case brn
                case btn
                case bwa
                case caf
                case can
                case che
                case chl
                case chn
                case civ
                case cmr
                case cod
                case cog
                case cok
                case col
                case com
                case cpv
                case cri
                case cub
                case cuw
                case cxr
                case cym
                case cyp
                case cze
                case deu
                case dji
                case dma
                case dnk
                case dom
                case dza
                case ecu
                case egy
                case eri
                case esp
                case est
                case eth
                case fin
                case fji
                case flk
                case fra
                case fro
                case fsm
                case gab
                case gbr
                case geo
                case ggy
                case gha
                case gib
                case gin
                case glp
                case gmb
                case gnb
                case gnq
                case grc
                case grd
                case grl
                case gtm
                case guf
                case gum
                case guy
                case hkg
                case hnd
                case hrv
                case hti
                case hun
                case idn
                case imn
                case ind
                case irl
                case irq
                case isl
                case isr
                case ita
                case jam
                case jey
                case jor
                case jpn
                case kaz
                case ken
                case kgz
                case khm
                case kir
                case kna
                case kor
                case kwt
                case lao
                case lbn
                case lbr
                case lby
                case lca
                case lie
                case lka
                case lso
                case ltu
                case lux
                case lva
                case mac
                case mar
                case mco
                case mda
                case mdg
                case mdv
                case mex
                case mhl
                case mkd
                case mli
                case mlt
                case mmr
                case mne
                case mng
                case mnp
                case moz
                case mrt
                case msr
                case mtq
                case mus
                case mwi
                case mys
                case myt
                case nam
                case ncl
                case ner
                case nfk
                case nga
                case nic
                case niu
                case nld
                case nor
                case npl
                case nru
                case nzl
                case omn
                case pak
                case pan
                case per
                case phl
                case plw
                case png
                case pol
                case pri
                case prt
                case pry
                case pse
                case pyf
                case qat
                case reu
                case rou
                case rus
                case rwa
                case sau
                case sen
                case sgp
                case shn
                case slb
                case sle
                case slv
                case smr
                case som
                case spm
                case srb
                case ssd
                case stp
                case sur
                case svk
                case svn
                case swe
                case swz
                case sxm
                case syc
                case tca
                case tcd
                case tgo
                case tha
                case tjk
                case tkm
                case tls
                case ton
                case tto
                case tun
                case tur
                case tuv
                case twn
                case tza
                case uga
                case ukr
                case umi
                case ury
                case usa
                case uzb
                case vat
                case vct
                case ven
                case vgb
                case vir
                case vnm
                case vut
                case wlf
                case wsm
                case yem
                case zaf
                case zmb
                case zwe
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .abw: return "ABW"
                    case .afg: return "AFG"
                    case .ago: return "AGO"
                    case .aia: return "AIA"
                    case .alb: return "ALB"
                    case .and: return "AND"
                    case .ant: return "ANT"
                    case .are: return "ARE"
                    case .arg: return "ARG"
                    case .arm: return "ARM"
                    case .asm: return "ASM"
                    case .atg: return "ATG"
                    case .aus: return "AUS"
                    case .aut: return "AUT"
                    case .aze: return "AZE"
                    case .bdi: return "BDI"
                    case .bel: return "BEL"
                    case .ben: return "BEN"
                    case .bes: return "BES"
                    case .bfa: return "BFA"
                    case .bgd: return "BGD"
                    case .bgr: return "BGR"
                    case .bhr: return "BHR"
                    case .bhs: return "BHS"
                    case .bih: return "BIH"
                    case .blr: return "BLR"
                    case .blz: return "BLZ"
                    case .bmu: return "BMU"
                    case .bol: return "BOL"
                    case .bra: return "BRA"
                    case .brb: return "BRB"
                    case .brn: return "BRN"
                    case .btn: return "BTN"
                    case .bwa: return "BWA"
                    case .caf: return "CAF"
                    case .can: return "CAN"
                    case .che: return "CHE"
                    case .chl: return "CHL"
                    case .chn: return "CHN"
                    case .civ: return "CIV"
                    case .cmr: return "CMR"
                    case .cod: return "COD"
                    case .cog: return "COG"
                    case .cok: return "COK"
                    case .col: return "COL"
                    case .com: return "COM"
                    case .cpv: return "CPV"
                    case .cri: return "CRI"
                    case .cub: return "CUB"
                    case .cuw: return "CUW"
                    case .cxr: return "CXR"
                    case .cym: return "CYM"
                    case .cyp: return "CYP"
                    case .cze: return "CZE"
                    case .deu: return "DEU"
                    case .dji: return "DJI"
                    case .dma: return "DMA"
                    case .dnk: return "DNK"
                    case .dom: return "DOM"
                    case .dza: return "DZA"
                    case .ecu: return "ECU"
                    case .egy: return "EGY"
                    case .eri: return "ERI"
                    case .esp: return "ESP"
                    case .est: return "EST"
                    case .eth: return "ETH"
                    case .fin: return "FIN"
                    case .fji: return "FJI"
                    case .flk: return "FLK"
                    case .fra: return "FRA"
                    case .fro: return "FRO"
                    case .fsm: return "FSM"
                    case .gab: return "GAB"
                    case .gbr: return "GBR"
                    case .geo: return "GEO"
                    case .ggy: return "GGY"
                    case .gha: return "GHA"
                    case .gib: return "GIB"
                    case .gin: return "GIN"
                    case .glp: return "GLP"
                    case .gmb: return "GMB"
                    case .gnb: return "GNB"
                    case .gnq: return "GNQ"
                    case .grc: return "GRC"
                    case .grd: return "GRD"
                    case .grl: return "GRL"
                    case .gtm: return "GTM"
                    case .guf: return "GUF"
                    case .gum: return "GUM"
                    case .guy: return "GUY"
                    case .hkg: return "HKG"
                    case .hnd: return "HND"
                    case .hrv: return "HRV"
                    case .hti: return "HTI"
                    case .hun: return "HUN"
                    case .idn: return "IDN"
                    case .imn: return "IMN"
                    case .ind: return "IND"
                    case .irl: return "IRL"
                    case .irq: return "IRQ"
                    case .isl: return "ISL"
                    case .isr: return "ISR"
                    case .ita: return "ITA"
                    case .jam: return "JAM"
                    case .jey: return "JEY"
                    case .jor: return "JOR"
                    case .jpn: return "JPN"
                    case .kaz: return "KAZ"
                    case .ken: return "KEN"
                    case .kgz: return "KGZ"
                    case .khm: return "KHM"
                    case .kir: return "KIR"
                    case .kna: return "KNA"
                    case .kor: return "KOR"
                    case .kwt: return "KWT"
                    case .lao: return "LAO"
                    case .lbn: return "LBN"
                    case .lbr: return "LBR"
                    case .lby: return "LBY"
                    case .lca: return "LCA"
                    case .lie: return "LIE"
                    case .lka: return "LKA"
                    case .lso: return "LSO"
                    case .ltu: return "LTU"
                    case .lux: return "LUX"
                    case .lva: return "LVA"
                    case .mac: return "MAC"
                    case .mar: return "MAR"
                    case .mco: return "MCO"
                    case .mda: return "MDA"
                    case .mdg: return "MDG"
                    case .mdv: return "MDV"
                    case .mex: return "MEX"
                    case .mhl: return "MHL"
                    case .mkd: return "MKD"
                    case .mli: return "MLI"
                    case .mlt: return "MLT"
                    case .mmr: return "MMR"
                    case .mne: return "MNE"
                    case .mng: return "MNG"
                    case .mnp: return "MNP"
                    case .moz: return "MOZ"
                    case .mrt: return "MRT"
                    case .msr: return "MSR"
                    case .mtq: return "MTQ"
                    case .mus: return "MUS"
                    case .mwi: return "MWI"
                    case .mys: return "MYS"
                    case .myt: return "MYT"
                    case .nam: return "NAM"
                    case .ncl: return "NCL"
                    case .ner: return "NER"
                    case .nfk: return "NFK"
                    case .nga: return "NGA"
                    case .nic: return "NIC"
                    case .niu: return "NIU"
                    case .nld: return "NLD"
                    case .nor: return "NOR"
                    case .npl: return "NPL"
                    case .nru: return "NRU"
                    case .nzl: return "NZL"
                    case .omn: return "OMN"
                    case .pak: return "PAK"
                    case .pan: return "PAN"
                    case .per: return "PER"
                    case .phl: return "PHL"
                    case .plw: return "PLW"
                    case .png: return "PNG"
                    case .pol: return "POL"
                    case .pri: return "PRI"
                    case .prt: return "PRT"
                    case .pry: return "PRY"
                    case .pse: return "PSE"
                    case .pyf: return "PYF"
                    case .qat: return "QAT"
                    case .reu: return "REU"
                    case .rou: return "ROU"
                    case .rus: return "RUS"
                    case .rwa: return "RWA"
                    case .sau: return "SAU"
                    case .sen: return "SEN"
                    case .sgp: return "SGP"
                    case .shn: return "SHN"
                    case .slb: return "SLB"
                    case .sle: return "SLE"
                    case .slv: return "SLV"
                    case .smr: return "SMR"
                    case .som: return "SOM"
                    case .spm: return "SPM"
                    case .srb: return "SRB"
                    case .ssd: return "SSD"
                    case .stp: return "STP"
                    case .sur: return "SUR"
                    case .svk: return "SVK"
                    case .svn: return "SVN"
                    case .swe: return "SWE"
                    case .swz: return "SWZ"
                    case .sxm: return "SXM"
                    case .syc: return "SYC"
                    case .tca: return "TCA"
                    case .tcd: return "TCD"
                    case .tgo: return "TGO"
                    case .tha: return "THA"
                    case .tjk: return "TJK"
                    case .tkm: return "TKM"
                    case .tls: return "TLS"
                    case .ton: return "TON"
                    case .tto: return "TTO"
                    case .tun: return "TUN"
                    case .tur: return "TUR"
                    case .tuv: return "TUV"
                    case .twn: return "TWN"
                    case .tza: return "TZA"
                    case .uga: return "UGA"
                    case .ukr: return "UKR"
                    case .umi: return "UMI"
                    case .ury: return "URY"
                    case .usa: return "USA"
                    case .uzb: return "UZB"
                    case .vat: return "VAT"
                    case .vct: return "VCT"
                    case .ven: return "VEN"
                    case .vgb: return "VGB"
                    case .vir: return "VIR"
                    case .vnm: return "VNM"
                    case .vut: return "VUT"
                    case .wlf: return "WLF"
                    case .wsm: return "WSM"
                    case .yem: return "YEM"
                    case .zaf: return "ZAF"
                    case .zmb: return "ZMB"
                    case .zwe: return "ZWE"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "ABW": self = .abw
                    case "AFG": self = .afg
                    case "AGO": self = .ago
                    case "AIA": self = .aia
                    case "ALB": self = .alb
                    case "AND": self = .and
                    case "ANT": self = .ant
                    case "ARE": self = .are
                    case "ARG": self = .arg
                    case "ARM": self = .arm
                    case "ASM": self = .asm
                    case "ATG": self = .atg
                    case "AUS": self = .aus
                    case "AUT": self = .aut
                    case "AZE": self = .aze
                    case "BDI": self = .bdi
                    case "BEL": self = .bel
                    case "BEN": self = .ben
                    case "BES": self = .bes
                    case "BFA": self = .bfa
                    case "BGD": self = .bgd
                    case "BGR": self = .bgr
                    case "BHR": self = .bhr
                    case "BHS": self = .bhs
                    case "BIH": self = .bih
                    case "BLR": self = .blr
                    case "BLZ": self = .blz
                    case "BMU": self = .bmu
                    case "BOL": self = .bol
                    case "BRA": self = .bra
                    case "BRB": self = .brb
                    case "BRN": self = .brn
                    case "BTN": self = .btn
                    case "BWA": self = .bwa
                    case "CAF": self = .caf
                    case "CAN": self = .can
                    case "CHE": self = .che
                    case "CHL": self = .chl
                    case "CHN": self = .chn
                    case "CIV": self = .civ
                    case "CMR": self = .cmr
                    case "COD": self = .cod
                    case "COG": self = .cog
                    case "COK": self = .cok
                    case "COL": self = .col
                    case "COM": self = .com
                    case "CPV": self = .cpv
                    case "CRI": self = .cri
                    case "CUB": self = .cub
                    case "CUW": self = .cuw
                    case "CXR": self = .cxr
                    case "CYM": self = .cym
                    case "CYP": self = .cyp
                    case "CZE": self = .cze
                    case "DEU": self = .deu
                    case "DJI": self = .dji
                    case "DMA": self = .dma
                    case "DNK": self = .dnk
                    case "DOM": self = .dom
                    case "DZA": self = .dza
                    case "ECU": self = .ecu
                    case "EGY": self = .egy
                    case "ERI": self = .eri
                    case "ESP": self = .esp
                    case "EST": self = .est
                    case "ETH": self = .eth
                    case "FIN": self = .fin
                    case "FJI": self = .fji
                    case "FLK": self = .flk
                    case "FRA": self = .fra
                    case "FRO": self = .fro
                    case "FSM": self = .fsm
                    case "GAB": self = .gab
                    case "GBR": self = .gbr
                    case "GEO": self = .geo
                    case "GGY": self = .ggy
                    case "GHA": self = .gha
                    case "GIB": self = .gib
                    case "GIN": self = .gin
                    case "GLP": self = .glp
                    case "GMB": self = .gmb
                    case "GNB": self = .gnb
                    case "GNQ": self = .gnq
                    case "GRC": self = .grc
                    case "GRD": self = .grd
                    case "GRL": self = .grl
                    case "GTM": self = .gtm
                    case "GUF": self = .guf
                    case "GUM": self = .gum
                    case "GUY": self = .guy
                    case "HKG": self = .hkg
                    case "HND": self = .hnd
                    case "HRV": self = .hrv
                    case "HTI": self = .hti
                    case "HUN": self = .hun
                    case "IDN": self = .idn
                    case "IMN": self = .imn
                    case "IND": self = .ind
                    case "IRL": self = .irl
                    case "IRQ": self = .irq
                    case "ISL": self = .isl
                    case "ISR": self = .isr
                    case "ITA": self = .ita
                    case "JAM": self = .jam
                    case "JEY": self = .jey
                    case "JOR": self = .jor
                    case "JPN": self = .jpn
                    case "KAZ": self = .kaz
                    case "KEN": self = .ken
                    case "KGZ": self = .kgz
                    case "KHM": self = .khm
                    case "KIR": self = .kir
                    case "KNA": self = .kna
                    case "KOR": self = .kor
                    case "KWT": self = .kwt
                    case "LAO": self = .lao
                    case "LBN": self = .lbn
                    case "LBR": self = .lbr
                    case "LBY": self = .lby
                    case "LCA": self = .lca
                    case "LIE": self = .lie
                    case "LKA": self = .lka
                    case "LSO": self = .lso
                    case "LTU": self = .ltu
                    case "LUX": self = .lux
                    case "LVA": self = .lva
                    case "MAC": self = .mac
                    case "MAR": self = .mar
                    case "MCO": self = .mco
                    case "MDA": self = .mda
                    case "MDG": self = .mdg
                    case "MDV": self = .mdv
                    case "MEX": self = .mex
                    case "MHL": self = .mhl
                    case "MKD": self = .mkd
                    case "MLI": self = .mli
                    case "MLT": self = .mlt
                    case "MMR": self = .mmr
                    case "MNE": self = .mne
                    case "MNG": self = .mng
                    case "MNP": self = .mnp
                    case "MOZ": self = .moz
                    case "MRT": self = .mrt
                    case "MSR": self = .msr
                    case "MTQ": self = .mtq
                    case "MUS": self = .mus
                    case "MWI": self = .mwi
                    case "MYS": self = .mys
                    case "MYT": self = .myt
                    case "NAM": self = .nam
                    case "NCL": self = .ncl
                    case "NER": self = .ner
                    case "NFK": self = .nfk
                    case "NGA": self = .nga
                    case "NIC": self = .nic
                    case "NIU": self = .niu
                    case "NLD": self = .nld
                    case "NOR": self = .nor
                    case "NPL": self = .npl
                    case "NRU": self = .nru
                    case "NZL": self = .nzl
                    case "OMN": self = .omn
                    case "PAK": self = .pak
                    case "PAN": self = .pan
                    case "PER": self = .per
                    case "PHL": self = .phl
                    case "PLW": self = .plw
                    case "PNG": self = .png
                    case "POL": self = .pol
                    case "PRI": self = .pri
                    case "PRT": self = .prt
                    case "PRY": self = .pry
                    case "PSE": self = .pse
                    case "PYF": self = .pyf
                    case "QAT": self = .qat
                    case "REU": self = .reu
                    case "ROU": self = .rou
                    case "RUS": self = .rus
                    case "RWA": self = .rwa
                    case "SAU": self = .sau
                    case "SEN": self = .sen
                    case "SGP": self = .sgp
                    case "SHN": self = .shn
                    case "SLB": self = .slb
                    case "SLE": self = .sle
                    case "SLV": self = .slv
                    case "SMR": self = .smr
                    case "SOM": self = .som
                    case "SPM": self = .spm
                    case "SRB": self = .srb
                    case "SSD": self = .ssd
                    case "STP": self = .stp
                    case "SUR": self = .sur
                    case "SVK": self = .svk
                    case "SVN": self = .svn
                    case "SWE": self = .swe
                    case "SWZ": self = .swz
                    case "SXM": self = .sxm
                    case "SYC": self = .syc
                    case "TCA": self = .tca
                    case "TCD": self = .tcd
                    case "TGO": self = .tgo
                    case "THA": self = .tha
                    case "TJK": self = .tjk
                    case "TKM": self = .tkm
                    case "TLS": self = .tls
                    case "TON": self = .ton
                    case "TTO": self = .tto
                    case "TUN": self = .tun
                    case "TUR": self = .tur
                    case "TUV": self = .tuv
                    case "TWN": self = .twn
                    case "TZA": self = .tza
                    case "UGA": self = .uga
                    case "UKR": self = .ukr
                    case "UMI": self = .umi
                    case "URY": self = .ury
                    case "USA": self = .usa
                    case "UZB": self = .uzb
                    case "VAT": self = .vat
                    case "VCT": self = .vct
                    case "VEN": self = .ven
                    case "VGB": self = .vgb
                    case "VIR": self = .vir
                    case "VNM": self = .vnm
                    case "VUT": self = .vut
                    case "WLF": self = .wlf
                    case "WSM": self = .wsm
                    case "YEM": self = .yem
                    case "ZAF": self = .zaf
                    case "ZMB": self = .zmb
                    case "ZWE": self = .zwe
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'rating'
                public static var rating: Relation<[String]?> {
                    .init(key: "filter[rating]")
                }

                /// filter by attribute 'territory'
                public static var territory: Relation<[Territory]?> {
                    .init(key: "filter[territory]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case response
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .response: return "response"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "response": self = .response
                default: self = .unknown(rawValue)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case createdDate
            case createdDateDesc
            case rating
            case ratingDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .createdDate: return "createdDate"
                case .createdDateDesc: return "-createdDate"
                case .rating: return "rating"
                case .ratingDesc: return "-rating"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "createdDate": self = .createdDate
                case "-createdDate": self = .createdDateDesc
                case "rating": self = .rating
                case "-rating": self = .ratingDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all