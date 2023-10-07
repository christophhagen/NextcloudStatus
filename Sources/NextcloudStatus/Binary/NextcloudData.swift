import Foundation

extension NextcloudStatus {

    public struct NextcloudData {

        public let nextcloud: Nextcloud?

        public let server: Server?

        public let activeUsers: ActiveUsers?

        public let message: String?
    }
}

extension NextcloudStatus.NextcloudData: Codable {

    enum CodingKeys: Int, CodingKey {
        case nextcloud = 1
        case server = 2
        case activeUsers = 3
        case message = 4
    }
}

extension NextcloudStatus.NextcloudData: Equatable {

}

extension NextcloudStatus.NextcloudData {

    init(json: NextcloudStatusJson.OCS.NextcloudData) throws {
        if let nextcloud = json.nextcloud {
            self.nextcloud = try .init(json: nextcloud)
        } else {
            self.nextcloud = nil
        }
        if let server = json.server {
            self.server = try .init(json: server)
        } else {
            self.server = nil
        }
        if let activeUsers = json.activeUsers {
            self.activeUsers = .init(json: activeUsers)
        } else {
            self.activeUsers = nil
        }
        self.message = json.message
    }
}
