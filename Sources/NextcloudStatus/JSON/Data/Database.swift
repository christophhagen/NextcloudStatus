import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData.Server {

    public struct Database {

        public let type: String

        public let version: String

        public let size: String
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.Database: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.Database: Equatable {

}
