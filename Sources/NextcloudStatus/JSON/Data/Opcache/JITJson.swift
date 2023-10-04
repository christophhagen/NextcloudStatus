import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache {

    public struct JIT {

        public let enabled: Bool

        public let on: Bool

        public let kind: Int

        public let opt_level: Int

        public let opt_flags: Int

        public let buffer_size: Int

        public let buffer_free: Int
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.JIT: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.JIT: Equatable {

}
