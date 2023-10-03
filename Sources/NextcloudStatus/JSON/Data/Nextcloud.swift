import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData {
    
    public struct Nextcloud {

        public let system: System

        public let storage: Storage

        public let shares: Shares
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud: Equatable {

}
