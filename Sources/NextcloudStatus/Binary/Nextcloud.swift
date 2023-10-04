import Foundation

extension NextcloudStatus.NextcloudData {

    public struct Nextcloud {
        
        public let system: System

        public let storage: Storage

        public let shares: Shares
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud: Codable {

    enum CodingKeys: Int, CodingKey {
        case system = 1
        case storage = 2
        case shares = 3
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud: Equatable {

}

extension NextcloudStatus.NextcloudData.Nextcloud {
    
    init(json: NextcloudStatusJson.OCS.NextcloudData.Nextcloud) throws {
        self.system = try .init(json: json.system)
        self.storage = .init(json: json.storage)
        self.shares = .init(json: json.shares)
    }
}
