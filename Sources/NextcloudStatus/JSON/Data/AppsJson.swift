import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System {

    public struct Apps {

        public let num_installed: Int

        public let num_updates_available: Int
        
        public let app_updates: [String: String]
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System.Apps: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.num_installed = try container.decode(Int.self, forKey: .num_installed)
        self.num_updates_available = try container.decode(Int.self, forKey: .num_updates_available)
        do {
            self.app_updates = try container.decode([String: String].self, forKey: .app_updates)
        } catch {
            let appUpdates = try container.decode([String].self, forKey: .app_updates)
            guard appUpdates.isEmpty else {
                print("Failed to decode nextcloud app updates, non-empty array: \(appUpdates)")
                throw error
            }
            self.app_updates = [:]
        }
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System.Apps: Equatable {

}
