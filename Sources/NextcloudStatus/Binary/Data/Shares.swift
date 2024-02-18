import Foundation


extension NextcloudStatus.NextcloudData.Nextcloud {

    public struct Shares {

        public let numberOfShares: Int

        public let numberOfUserShares: Int

        public let numberOfGroupShares: Int

        public let numberOfLinkShares: Int

        public let numberOfMailShares: Int

        public let numberOfRoomShares: Int

        public let numberOfShareLinksWithoutPassword: Int

        public let numberOfFederatedSharesSent: Int

        public let numberOfFederatedSharesReceived: Int

        public let permissions3_17: Int?

        public let permissions3_31: Int?
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.Shares: Codable {

    enum CodingKeys: Int, CodingKey {
        case numberOfShares = 1
        case numberOfUserShares = 2
        case numberOfGroupShares = 3
        case numberOfLinkShares = 4
        case numberOfMailShares = 5
        case numberOfRoomShares = 6
        case numberOfShareLinksWithoutPassword = 7
        case numberOfFederatedSharesSent = 8
        case numberOfFederatedSharesReceived = 9
        case permissions3_17 = 10
        case permissions3_31 = 11
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.Shares: Equatable {

}

extension NextcloudStatus.NextcloudData.Nextcloud.Shares {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Nextcloud.Shares) {
        self.numberOfShares = json.num_shares
        self.numberOfUserShares = json.num_shares_user
        self.numberOfGroupShares = json.num_shares_groups
        self.numberOfLinkShares = json.num_shares_link
        self.numberOfMailShares = json.num_shares_mail
        self.numberOfRoomShares = json.num_shares_room
        self.numberOfShareLinksWithoutPassword = json.num_shares_link_no_password
        self.numberOfFederatedSharesSent = json.num_fed_shares_sent
        self.numberOfFederatedSharesReceived = json.num_fed_shares_received
        self.permissions3_17 = json.permissions_3_17
        self.permissions3_31 = json.permissions_3_31
    }
}
