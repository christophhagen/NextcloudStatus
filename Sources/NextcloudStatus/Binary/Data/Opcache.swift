import Foundation

extension NextcloudStatus.NextcloudData.Server.PHP {

    public struct Opcache {

        public let opcacheIsEnabled: Bool

        public let cacheIsFull: Bool

        public let restartIsPending: Bool

        public let restartIsInProgress: Bool

        public let memoryUsage: MemoryUsage

        public let internedStringsUsage: InternedStringsUsage

        public let opcacheStatistics: Statistics

        public let jit: JIT
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache: Codable {

    enum CodingKeys: Int, CodingKey {
        case opcacheIsEnabled = 1
        case cacheIsFull = 2
        case restartIsPending = 3
        case restartIsInProgress = 4
        case memoryUsage = 5
        case internedStringsUsage = 6
        case opcacheStatistics = 7
        case jit = 8
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache) {
        self.opcacheIsEnabled = json.opcache_enabled
        self.cacheIsFull = json.cache_full
        self.restartIsPending = json.restart_pending
        self.restartIsInProgress = json.restart_in_progress
        self.memoryUsage = .init(json: json.memory_usage)
        self.internedStringsUsage = .init(json: json.interned_strings_usage)
        self.opcacheStatistics = .init(json: json.opcache_statistics)
        self.jit = .init(json: json.jit)
    }
}
