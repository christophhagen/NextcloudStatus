import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData {

    public struct Server {

        public let webserver: String

        public let php: PHP

        public let database: Database

    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Server: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Server: Equatable {

}
