import Foundation

extension NextcloudStatusJson.OCS.NextcloudData {

    public struct Server {

        public let webserver: String

        public let php: PHP

        public let database: Database

    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Server: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Server: Equatable {

}
