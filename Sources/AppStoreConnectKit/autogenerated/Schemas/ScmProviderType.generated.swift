// autogenerated

// swiftlint:disable all
import Foundation

public struct ScmProviderType: Hashable, Codable {
    public var displayName: String?

    public var isOnPremise: Bool?

    public var kind: Kind?

    public init(
        displayName: String? = nil,
        isOnPremise: Bool? = nil,
        kind: Kind? = nil
    ) {
        self.displayName = displayName
        self.isOnPremise = isOnPremise
        self.kind = kind
    }

    private enum CodingKeys: String, CodingKey {
        case displayName
        case isOnPremise
        case kind
    }

    public enum Kind: String, Hashable, Codable {
        case bitbucketCloud = "BITBUCKET_CLOUD"
        case bitbucketServer = "BITBUCKET_SERVER"
        case githubCloud = "GITHUB_CLOUD"
        case githubEnterprise = "GITHUB_ENTERPRISE"
        case gitlabCloud = "GITLAB_CLOUD"
        case gitlabSelfManaged = "GITLAB_SELF_MANAGED"
    }
}

// swiftlint:enable all