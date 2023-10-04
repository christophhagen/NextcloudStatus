import Foundation

extension NextcloudStatus.NextcloudData.Nextcloud.System {

    public struct Apps {

        public let numberOfInstalledApps: Int

        public let numberOfAvailableUpdates: Int

        public let availableAppUpdates: [String : String]
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.System.Apps: Codable {

    enum CodingKeys: Int, CodingKey {
        case numberOfInstalledApps = 1
        case numberOfAvailableUpdates = 2
        case availableAppUpdates = 3
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.System.Apps: Equatable {

}

extension NextcloudStatus.NextcloudData.Nextcloud.System.Apps {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System.Apps) {
        self.numberOfInstalledApps = json.num_installed
        self.numberOfAvailableUpdates = json.num_updates_available
        self.availableAppUpdates = json.app_updates
    }
}
