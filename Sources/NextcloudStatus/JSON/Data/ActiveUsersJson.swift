import Foundation

extension NextcloudStatusJson.OCS.NextcloudData {

    public struct ActiveUsers {

        public let last5minutes: Int

        public let last1hour: Int

        public let last24hours: Int

        public let last7days: Int?

        public let last1month: Int?

        public let last3months: Int?

        public let last6months: Int?

        public let lastyear: Int?
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.ActiveUsers: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.ActiveUsers: Equatable {

}
