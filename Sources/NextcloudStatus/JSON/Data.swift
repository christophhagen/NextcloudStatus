import Foundation

extension NextCloudJsonStatus.OCS {

    public struct NextcloudData {

        public let nextcloud: Nextcloud

        public let server: Server

        public let activeUsers: ActiveUsers
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData: Equatable {

}
