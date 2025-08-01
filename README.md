# AppStoreConnectKit

App Store Connect API for Swift.

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/swiftty/AppStoreConnectKit", from: "0.0.5")
]
```

## Usage

```swift
import AppStoreConnectKit

var endpoint = V1.Apps.GET()
endpoint.parameters.fields[.apps] = [.name, .bundleId]
endpoint.parameters.limit[.builds] = 5

guard var request = try URLRequest(endpoint: endpoint) else { return }
request.setValue("Bearer \(<# json web token #>)", forHTTPHeaderField: "Authorization")

let (data, urlResponse) = try await URLSession.shared.data(for: request)

let response = try endpoint.response(from: data, urlResponse: urlResponse as! HTTPURLResponse)

print(response.data)
```

### Paging

```swift
guard let endpoint = Cursor<V1.Apps.GET>(url: response.links.next) else { return }

guard var request = try URLRequest(endpoint: endpoint) else { return }
request.setValue("Bearer \(<# json web token #>)", forHTTPHeaderField: "Authorization")

let (data, urlResponse) = try await URLSession.shared.data(for: request)

let nextResponse = try endpoint.response(from: data, urlResponse: urlResponse as! HTTPURLResponse)

print(nextResponse.data)
```

### Generate JWT (Optional)

you can use `AppStoreConnectToken` or any other JWT libraries.

```swift
import AppStoreConnectToken

let p8 = try P8(String(contentsOf: URL(fileURLWithPath: "<# path to p8 file #>"))
let jwt = JWT(keyIdentifier: "<# your key id #>",
              issuerIdentifier: "<# your issuer id #>",
              expiration: 60 * 60)

let token = try jwt.sign(using: p8)
// request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
```

## License

AppStoreConnectKit is available under the MIT license, and uses source code from open source projects. See the [LICENSE](https://github.com/swiftty/AppStoreConnectKit/blob/main/LICENSE) file for more info.
