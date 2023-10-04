import Foundation

extension NextcloudStatus.NextcloudData.Server {

    public struct PHP {

        public let version: SemanticVersion

        public let memoryLimit: Int

        public let maximumExecutionTime: Int

        public let maximumFileUploadSize: Int

        public let opcache: Opcache?

        public let apcu: [String]

        public let extensions: [String]
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP: Codable {

    enum CodingKeys: Int, CodingKey {
        case version = 1
        case memoryLimit = 2
        case maximumExecutionTime = 3
        case maximumFileUploadSize = 4
        case opcache = 5
        case apcu = 6
        case extensions = 7
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP) throws {
        guard let version = SemanticVersion(rawValue: json.version) else {
            let context = DecodingError.Context(codingPath: [
                NextcloudStatus.CodingKeys.data,
                NextcloudStatus.NextcloudData.CodingKeys.server,
                NextcloudStatus.NextcloudData.Server.CodingKeys.php,
                CodingKeys.version
            ], debugDescription: "The version string is invalid")
            throw DecodingError.typeMismatch(SemanticVersion.self, context)
        }
        self.version = version
        self.memoryLimit = json.memory_limit
        self.maximumExecutionTime = json.max_execution_time
        self.maximumFileUploadSize = json.upload_max_filesize
        self.apcu = json.apcu ?? []
        self.extensions = json.extensions ?? []

        guard let opcache = json.opcache else {
            self.opcache = nil
            return
        }
        self.opcache = .init(json: opcache)
    }
}
