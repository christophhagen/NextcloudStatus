import Foundation

extension NextcloudStatusJson.OCS.NextcloudData {
    
    public struct Nextcloud {

        public let system: System

        public let storage: Storage

        public let shares: Shares
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud: Equatable {

}
