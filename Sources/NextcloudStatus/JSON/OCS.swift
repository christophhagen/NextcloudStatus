import Foundation

extension NextcloudStatusJson {

    public struct OCS {

        public let meta: Meta

        public let data: NextcloudData
    }
}

extension NextcloudStatusJson.OCS: Codable {
    
}

extension NextcloudStatusJson.OCS: Equatable {

}
