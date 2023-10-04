import Foundation

extension NextcloudStatus.NextcloudData.Server {

    public struct Database {

        public let type: String

        public let version: SemanticVersion

        public let size: Int
    }
}

extension NextcloudStatus.NextcloudData.Server.Database: Codable {

    enum CodingKeys: Int, CodingKey {
        case type = 1
        case version = 2
        case size = 3
    }
}

extension NextcloudStatus.NextcloudData.Server.Database: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.Database {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.Database) throws {
        self.type = json.type
        guard let version = SemanticVersion(rawValue: json.version) else {
            let context = DecodingError.Context(codingPath: [
                NextcloudStatus.CodingKeys.data,
                NextcloudStatus.NextcloudData.CodingKeys.server,
                NextcloudStatus.NextcloudData.Server.CodingKeys.database,
                CodingKeys.version
            ], debugDescription: "The version string is invalid")
            throw DecodingError.typeMismatch(SemanticVersion.self, context)
        }
        self.version = version
        guard let size = Int(json.size) else {
            let context = DecodingError.Context(codingPath: [
                NextcloudStatus.CodingKeys.data,
                NextcloudStatus.NextcloudData.CodingKeys.server,
                NextcloudStatus.NextcloudData.Server.CodingKeys.database,
                CodingKeys.size
            ], debugDescription: "The size is not a valid integer")
            throw DecodingError.typeMismatch(SemanticVersion.self, context)
        }
        self.size = size
    }
}
