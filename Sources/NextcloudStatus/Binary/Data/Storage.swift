import Foundation

extension NextcloudStatus.NextcloudData.Nextcloud {

    public struct Storage {

        public let numberOfUsers: Int

        public let numberOfFiles: Int

        public let numberOfStorages: Int

        public let numberOfLocalStorages: Int

        public let numberOfHomeStorages: Int

        public let numberOfOtherStorages: Int
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.Storage: Codable {

    enum CodingKeys: Int, CodingKey {
        case numberOfUsers = 1
        case numberOfFiles = 2
        case numberOfStorages = 3
        case numberOfLocalStorages = 4
        case numberOfHomeStorages = 5
        case numberOfOtherStorages = 6
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.Storage: Equatable {

}

extension NextcloudStatus.NextcloudData.Nextcloud.Storage {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Nextcloud.Storage) {
        self.numberOfUsers = json.num_users
        self.numberOfFiles = json.num_files
        self.numberOfStorages = json.num_storages
        self.numberOfLocalStorages = json.num_storages_local
        self.numberOfHomeStorages = json.num_storages_home
        self.numberOfOtherStorages = json.num_storages_other
    }
}
