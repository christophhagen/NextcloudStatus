import Foundation

extension NextcloudStatusJson.OCS {

    public struct NextcloudData {

        public let nextcloud: Nextcloud?

        public let server: Server?

        public let activeUsers: ActiveUsers?

        public let message: String?
    }
}

extension NextcloudStatusJson.OCS.NextcloudData: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData: Equatable {

}
