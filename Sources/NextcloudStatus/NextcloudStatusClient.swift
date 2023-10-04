import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

/**
 The suffix to append to the url of a nextcloud server to get the status of the instance.

 Use the suffix to build an appropriate url:



 An access token must be generated for the nextcloud instance.
 With nextcloud-snap, this can be achieved with the following command:
 ```
 occ config:app:set serverinfo token --value <token>
 ```
 */
public let nextcloudStatusUrlSuffix = "/ocs/v2.php/apps/serverinfo/api/v1/info?format=json"

/**
 The HTTP request header key to transmit the access token during a Nextcloud status request.
 */
public let nextcloudStatusAccessTokenHeaderKey = "NC-Token"

public struct NextcloudStatusClient {

    public let url: URL

    public let token: String

    public let session: URLSession

    let request: URLRequest

    /**
     Create a new client.

     - Note: The suffix to request the status is automatically appended to the url.
     - Note: Ensure that the nextcloud instance is correctly configured with the access token.

     - Parameter url: The url to the nextcloud instance.
     - Parameter token: The access token.
     - Parameter session: The url session to perform the requests.

     An access token must be generated for the nextcloud instance.
     With nextcloud-snap, this can be achieved with the following command:
     ```
     occ config:app:set serverinfo token --value <token>
     ```
     */
    public init(url: URL, token: String, session: URLSession = .shared) {
        self.url = url
        self.token = token
        self.session = session
        var request = URLRequest(url: url.appendingPathComponent(nextcloudStatusUrlSuffix))
        request.setValue(token, forHTTPHeaderField: nextcloudStatusAccessTokenHeaderKey)
        self.request = request
    }

    /**
     Get the current status of the nextcloud instance.
     */
    public func status() async throws -> NextcloudStatus {
        try await rawStatus().converted()
    }

    /**
     Get the raw status of the nextcloud instance.

     This function does not attempt to convert the received status to the more efficient `NextcloudStatus` type,
     but instead returns a more verbose data type closer to the original json.

     This function is recommended when ``getStatus()`` throws errors related to decoding.
     */
    public func rawStatus() async throws -> NextcloudStatusJson {
        let data = try await getData()
        return try JSONDecoder().decode(NextcloudStatusJson.self, from: data)
    }

    /**
     Get the raw status returned by the nextcloud status request.
     - Returns: The JSON response, or `nil`, if the response is not a valid string.
     */
    public func jsonStatus() async throws -> String? {
        let data = try await getData()
        return .init(data: data, encoding: .utf8)
    }

    private func getData() async throws -> Data {
        try await session.data(for: request).0
    }
}
