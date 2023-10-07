import Foundation

extension NextcloudStatus {

    public struct NextcloudData {

        public let nextcloud: Nextcloud

        public let server: Server

        public let activeUsers: ActiveUsers
    }
}

extension NextcloudStatus.NextcloudData: Codable {

    enum CodingKeys: Int, CodingKey {
        case nextcloud = 1
        case server = 2
        case activeUsers = 3
    }
}

extension NextcloudStatus.NextcloudData: Equatable {

}

extension NextcloudStatus.NextcloudData {

    init(json: NextcloudStatusJson.OCS.NextcloudData) throws {
        self.nextcloud = try .init(json: json.nextcloud)
        self.server = try .init(json: json.server)
        self.activeUsers = .init(json: json.activeUsers)
    }
}
