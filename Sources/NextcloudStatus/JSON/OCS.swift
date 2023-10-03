import Foundation

extension NextCloudJsonStatus {

    public struct OCS {

        public let meta: Meta

        public let data: NextcloudData
    }
}

extension NextCloudJsonStatus.OCS: Codable {
    
}

extension NextCloudJsonStatus.OCS: Equatable {

}
