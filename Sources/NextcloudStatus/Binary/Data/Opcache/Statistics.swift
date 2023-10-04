import Foundation

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache {

    public struct Statistics {

        public let numberOfCachedScripts: Int

        public let numberOfCachedKeys: Int

        public let maximumCachedKeys: Int

        public let hits: Int

        public let startTime: Int

        public let timeOfLastRestart: Int

        public let oomRestarts: Int

        public let hashRestarts: Int

        public let manualRestarts: Int

        public let misses: Int

        public let blacklistMisses: Int

        public let blacklistMissRatio: Int

        public let opcacheHitRate: Double
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.Statistics: Codable {

    enum CodingKeys: Int, CodingKey {
        case numberOfCachedScripts = 1
        case numberOfCachedKeys = 2
        case maximumCachedKeys = 3
        case hits = 4
        case startTime = 5
        case timeOfLastRestart = 6
        case oomRestarts = 7
        case hashRestarts = 8
        case manualRestarts = 9
        case misses = 10
        case blacklistMisses = 11
        case blacklistMissRatio = 12
        case opcacheHitRate = 13
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.Statistics: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.Statistics {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.Statistics) {
        self.numberOfCachedScripts = json.num_cached_scripts
        self.numberOfCachedKeys = json.num_cached_keys
        self.maximumCachedKeys = json.max_cached_keys
        self.hits =  json.hits
        self.startTime = json.start_time
        self.timeOfLastRestart = json.last_restart_time
        self.oomRestarts = json.oom_restarts
        self.hashRestarts = json.hash_restarts
        self.manualRestarts = json.manual_restarts
        self.misses = json.misses
        self.blacklistMisses = json.blacklist_misses
        self.blacklistMissRatio = json.blacklist_miss_ratio
        self.opcacheHitRate = json.opcache_hit_rate
    }
}
