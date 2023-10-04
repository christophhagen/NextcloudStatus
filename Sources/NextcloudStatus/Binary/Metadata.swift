import Foundation

extension NextcloudStatus {

    public struct Metadata {

        public let status: String

        public let statuscode: Int

        public let message: String
    }
}

extension NextcloudStatus.Metadata: Codable {
    
    enum CodingKeys: Int, CodingKey {
        case status = 1
        case statuscode = 2
        case message = 3
    }
}

extension NextcloudStatus.Metadata: Equatable {

}

extension NextcloudStatus.Metadata {

    init(json: NextcloudStatusJson.OCS.Meta) {
        self.status = json.status
        self.statuscode = json.statuscode
        self.message = json.message
    }
}
