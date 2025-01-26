import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud {

    public struct System {

        public let version: String

        public let theme: String

        public let enable_avatars: String

        public let enable_previews: String

        public let memcacheLocal: String

        public let memcacheDistributed: String

        public let filelockingEnabled: String

        public let memcacheLocking: String

        public let debug: String

        public let freespace: Int

        public let cpuload: [Double]

        public let cpunum: Int?

        public let mem_total: Int

        public let mem_free: Int

        public let swap_total: Int

        public let swap_free: Int

        public let apps: Apps?
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System: Codable {

    enum CodingKeys: String, CodingKey {
        case version
        case theme
        case enable_avatars
        case enable_previews
        case memcacheLocal = "memcache.local"
        case memcacheDistributed = "memcache.distributed"
        case filelockingEnabled = "filelocking.enabled"
        case memcacheLocking = "memcache.locking"
        case debug
        case freespace
        case cpuload
        case cpunum
        case mem_total
        case mem_free
        case swap_total
        case swap_free
        case apps
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System: Equatable {

}
