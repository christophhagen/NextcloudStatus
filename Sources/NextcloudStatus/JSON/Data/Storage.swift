import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud {

    public struct Storage {

        public let num_users: Int

        public let num_files: Int

        public let num_storages: Int

        public let num_storages_local: Int

        public let num_storages_home: Int

        public let num_storages_other: Int
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud.Storage: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud.Storage: Equatable {

}
