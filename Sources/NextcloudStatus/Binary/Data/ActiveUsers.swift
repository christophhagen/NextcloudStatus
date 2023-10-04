import Foundation

extension NextcloudStatus.NextcloudData {

    public struct ActiveUsers {

        public let last5minutes: Int

        public let last1hour: Int

        public let last24hours: Int
    }
}

extension NextcloudStatus.NextcloudData.ActiveUsers: Codable {

    enum CodingKeys: Int, CodingKey {
        case last5minutes = 1
        case last1hour = 2
        case last24hours = 3
    }
}

extension NextcloudStatus.NextcloudData.ActiveUsers: Equatable {

}

extension NextcloudStatus.NextcloudData.ActiveUsers {

    init(json: NextcloudStatusJson.OCS.NextcloudData.ActiveUsers) {
        self.last5minutes = json.last5minutes
        self.last1hour = json.last1hour
        self.last24hours = json.last24hours
    }
}
