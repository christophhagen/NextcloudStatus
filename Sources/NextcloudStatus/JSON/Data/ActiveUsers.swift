import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData {

    public struct ActiveUsers {

        public let last5minutes: Int

        public let last1hour: Int

        public let last24hours: Int
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.ActiveUsers: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.ActiveUsers: Equatable {

}
