import Foundation

extension NextcloudStatus.NextcloudData {

    public struct Server {

        public let webserver: String

        public let php: PHP

        public let database: Database

    }
}

extension NextcloudStatus.NextcloudData.Server: Codable {

    enum CodingKeys: Int, CodingKey {
        case webserver = 1
        case php = 2
        case database = 3
    }
}

extension NextcloudStatus.NextcloudData.Server: Equatable {

}

extension NextcloudStatus.NextcloudData.Server {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server) throws {
        self.webserver = json.webserver
        self.php = try .init(json: json.php)
        self.database = try .init(json: json.database)
    }
}
