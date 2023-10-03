import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP {

    public struct Opcache {
        
        public let opcache_enabled: Bool
        
        public let cache_full: Bool

        public let restart_pending: Bool

        public let restart_in_progress: Bool

        public let memory_usage: MemoryUsage

        public let interned_strings_usage: InternedStringsUsage

        public let opcache_statistics: Statistics

        public let jit: JIT
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache: Equatable {

}
