import Foundation


extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud {

    public struct Shares {

        public let num_shares: Int

        public let num_shares_user: Int

        public let num_shares_groups: Int

        public let num_shares_link: Int

        public let num_shares_mail: Int

        public let num_shares_room: Int

        public let num_shares_link_no_password: Int

        public let num_fed_shares_sent: Int

        public let num_fed_shares_received: Int

        public let permissions_3_31: Int

        public let permissions_3_17: Int

    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud.Shares: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Nextcloud.Shares: Equatable {

}
