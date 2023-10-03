import Foundation

extension NextCloudJsonStatus.OCS {

    public struct Meta {

        public let status: String

        public let statuscode: Int

        public let message: String
    }
}

extension NextCloudJsonStatus.OCS.Meta: Codable {
    
}

extension NextCloudJsonStatus.OCS.Meta: Equatable {

}
