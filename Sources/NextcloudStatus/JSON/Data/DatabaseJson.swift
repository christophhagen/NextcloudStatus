import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Server {

    public struct Database {

        public let type: String

        public let version: String

        public let size: String
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Server.Database: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Server.Database: Equatable {

}
