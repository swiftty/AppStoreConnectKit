// autogenerated

// swiftlint:disable all
import Foundation

extension V1.Builds.ById {
    public struct GET: Endpoint {
        public typealias Response = BuildResponse

        public var path: String {
            "/v1/builds/\(id)"
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
                URLQueryItem(name: "fields[appEncryptionDeclarations]",
                             value: parameters.fields[.appEncryptionDeclarations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaAppReviewSubmissions]",
                             value: parameters.fields[.betaAppReviewSubmissions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaBuildLocalizations]",
                             value: parameters.fields[.betaBuildLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaTesters]",
                             value: parameters.fields[.betaTesters]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[buildBetaDetails]",
                             value: parameters.fields[.buildBetaDetails]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[buildIcons]",
                             value: parameters.fields[.buildIcons]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[builds]",
                             value: parameters.fields[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[diagnosticSignatures]",
                             value: parameters.fields[.diagnosticSignatures]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[perfPowerMetrics]",
                             value: parameters.fields[.perfPowerMetrics]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[preReleaseVersions]",
                             value: parameters.fields[.preReleaseVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[betaBuildLocalizations]",
                             value: parameters.limit[.betaBuildLocalizations].map { "\($0)" }),
                URLQueryItem(name: "limit[buildBundles]",
                             value: parameters.limit[.buildBundles].map { "\($0)" }),
                URLQueryItem(name: "limit[icons]",
                             value: parameters.limit[.icons].map { "\($0)" }),
                URLQueryItem(name: "limit[individualTesters]",
                             value: parameters.limit[.individualTesters].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single Build as `BuildResponse`
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
                return try jsonDecoder.decode(BuildResponse.self, from: data)

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

extension V1.Builds.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppEncryptionDeclarations: String, Hashable, Codable {
                case app
                case appEncryptionDeclarationState
                case availableOnFrenchStore
                case builds
                case codeValue
                case containsProprietaryCryptography
                case containsThirdPartyCryptography
                case documentName
                case documentType
                case documentUrl
                case exempt
                case platform
                case uploadedDate
                case usesEncryption
            }

            public enum AppStoreVersions: String, Hashable, Codable {
                case ageRatingDeclaration
                case app
                case appClipDefaultExperience
                case appStoreReviewDetail
                case appStoreState
                case appStoreVersionLocalizations
                case appStoreVersionPhasedRelease
                case appStoreVersionSubmission
                case build
                case copyright
                case createdDate
                case downloadable
                case earliestReleaseDate
                case idfaDeclaration
                case platform
                case releaseType
                case routingAppCoverage
                case usesIdfa
                case versionString
            }

            public enum Apps: String, Hashable, Codable {
                case appClips
                case appInfos
                case appStoreVersions
                case availableInNewTerritories
                case availableTerritories
                case betaAppLocalizations
                case betaAppReviewDetail
                case betaGroups
                case betaLicenseAgreement
                case betaTesters
                case builds
                case bundleId
                case ciProduct
                case contentRightsDeclaration
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case prices
                case primaryLocale
                case sku
            }

            public enum BetaAppReviewSubmissions: String, Hashable, Codable {
                case betaReviewState
                case build
                case submittedDate
            }

            public enum BetaBuildLocalizations: String, Hashable, Codable {
                case build
                case locale
                case whatsNew
            }

            public enum BetaTesters: String, Hashable, Codable {
                case apps
                case betaGroups
                case builds
                case email
                case firstName
                case inviteType
                case lastName
            }

            public enum BuildBetaDetails: String, Hashable, Codable {
                case autoNotifyEnabled
                case build
                case externalBuildState
                case internalBuildState
            }

            public enum BuildIcons: String, Hashable, Codable {
                case iconAsset
                case iconType
            }

            public enum Builds: String, Hashable, Codable {
                case app
                case appEncryptionDeclaration
                case appStoreVersion
                case betaAppReviewSubmission
                case betaBuildLocalizations
                case betaGroups
                case buildAudienceType
                case buildBetaDetail
                case buildBundles
                case computedMinMacOsVersion
                case diagnosticSignatures
                case expirationDate
                case expired
                case iconAssetToken
                case icons
                case individualTesters
                case lsMinimumSystemVersion
                case minOsVersion
                case perfPowerMetrics
                case preReleaseVersion
                case processingState
                case uploadedDate
                case usesNonExemptEncryption
                case version
            }

            public enum DiagnosticSignatures: String, Hashable, Codable {
                case diagnosticType
                case logs
                case signature
                case weight
            }

            public enum PerfPowerMetrics: String, Hashable, Codable {
                case deviceType
                case metricType
                case platform
            }

            public enum PreReleaseVersions: String, Hashable, Codable {
                case app
                case builds
                case platform
                case version
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appEncryptionDeclarations
                public static var appEncryptionDeclarations: Relation<[AppEncryptionDeclarations]?> {
                    .init(key: "fields[appEncryptionDeclarations]")
                }

                /// the fields to include for returned resources of type appStoreVersions
                public static var appStoreVersions: Relation<[AppStoreVersions]?> {
                    .init(key: "fields[appStoreVersions]")
                }

                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type betaAppReviewSubmissions
                public static var betaAppReviewSubmissions: Relation<[BetaAppReviewSubmissions]?> {
                    .init(key: "fields[betaAppReviewSubmissions]")
                }

                /// the fields to include for returned resources of type betaBuildLocalizations
                public static var betaBuildLocalizations: Relation<[BetaBuildLocalizations]?> {
                    .init(key: "fields[betaBuildLocalizations]")
                }

                /// the fields to include for returned resources of type betaTesters
                public static var betaTesters: Relation<[BetaTesters]?> {
                    .init(key: "fields[betaTesters]")
                }

                /// the fields to include for returned resources of type buildBetaDetails
                public static var buildBetaDetails: Relation<[BuildBetaDetails]?> {
                    .init(key: "fields[buildBetaDetails]")
                }

                /// the fields to include for returned resources of type buildIcons
                public static var buildIcons: Relation<[BuildIcons]?> {
                    .init(key: "fields[buildIcons]")
                }

                /// the fields to include for returned resources of type builds
                public static var builds: Relation<[Builds]?> {
                    .init(key: "fields[builds]")
                }

                /// the fields to include for returned resources of type diagnosticSignatures
                public static var diagnosticSignatures: Relation<[DiagnosticSignatures]?> {
                    .init(key: "fields[diagnosticSignatures]")
                }

                /// the fields to include for returned resources of type perfPowerMetrics
                public static var perfPowerMetrics: Relation<[PerfPowerMetrics]?> {
                    .init(key: "fields[perfPowerMetrics]")
                }

                /// the fields to include for returned resources of type preReleaseVersions
                public static var preReleaseVersions: Relation<[PreReleaseVersions]?> {
                    .init(key: "fields[preReleaseVersions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case buildBetaDetail
            case buildBundles
            case icons
            case individualTesters
            case preReleaseVersion
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related betaBuildLocalizations returned (when they are included)
                public static var betaBuildLocalizations: Relation<Int?> {
                    .init(key: "limit[betaBuildLocalizations]")
                }

                /// maximum number of related buildBundles returned (when they are included)
                public static var buildBundles: Relation<Int?> {
                    .init(key: "limit[buildBundles]")
                }

                /// maximum number of related icons returned (when they are included)
                public static var icons: Relation<Int?> {
                    .init(key: "limit[icons]")
                }

                /// maximum number of related individualTesters returned (when they are included)
                public static var individualTesters: Relation<Int?> {
                    .init(key: "limit[individualTesters]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }
    }
}

// swiftlint:enable all
