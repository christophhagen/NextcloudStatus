import Foundation

extension NextcloudStatus.NextcloudData {

    public struct ActiveUsers {

        public let last5minutes: Int

        public let last1hour: Int

        public let last24hours: Int

        public let last7days: Int?

        public let lastMonth: Int?

        public let last3months: Int?

        public let last6months: Int?

        public let lastYear: Int?
    }
}

extension NextcloudStatus.NextcloudData.ActiveUsers: Codable {

    enum CodingKeys: Int, CodingKey {
        case last5minutes = 1
        case last1hour = 2
        case last24hours = 3
        case last7days = 4
        case lastMonth = 5
        case last3months = 6
        case last6months = 7
        case lastYear = 8
    }
}

extension NextcloudStatus.NextcloudData.ActiveUsers: Equatable {

}

extension NextcloudStatus.NextcloudData.ActiveUsers {

    init(json: NextcloudStatusJson.OCS.NextcloudData.ActiveUsers) {
        self.last5minutes = json.last5minutes
        self.last1hour = json.last1hour
        self.last24hours = json.last24hours
        self.last7days = json.last7days
        self.lastMonth = json.last1month
        self.last3months = json.last3months
        self.last6months = json.last6months
        self.lastYear = json.lastyear
    }
}
