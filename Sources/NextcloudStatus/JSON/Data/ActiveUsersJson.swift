import Foundation

extension NextcloudStatusJson.OCS.NextcloudData {

    public struct ActiveUsers {

        public let last5minutes: Int

        public let last1hour: Int

        public let last24hours: Int
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.ActiveUsers: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.ActiveUsers: Equatable {

}
