import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache {

    public struct Statistics {

        public let num_cached_scripts: Int

        public let num_cached_keys: Int

        public let max_cached_keys: Int

        public let hits: Int

        public let start_time: Int

        public let last_restart_time: Int

        public let oom_restarts: Int

        public let hash_restarts: Int

        public let manual_restarts: Int

        public let misses: Int

        public let blacklist_misses: Int

        public let blacklist_miss_ratio: Int

        public let opcache_hit_rate: Double
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache.Statistics: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache.Statistics: Equatable {

}
