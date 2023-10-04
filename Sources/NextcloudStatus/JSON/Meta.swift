import Foundation

extension NextcloudStatusJson.OCS {

    public struct Meta {

        public let status: String

        public let statuscode: Int

        public let message: String
    }
}

extension NextcloudStatusJson.OCS.Meta: Codable {
    
}

extension NextcloudStatusJson.OCS.Meta: Equatable {

}
