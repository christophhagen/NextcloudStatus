import Foundation

public struct NextcloudStatusJson {

    public let ocs: OCS
}

extension NextcloudStatusJson: Codable {

}

extension NextcloudStatusJson: Equatable {
    
}

public extension NextcloudStatusJson {

    func converted() throws -> NextcloudStatus {
        try .init(json: ocs)
    }
}
