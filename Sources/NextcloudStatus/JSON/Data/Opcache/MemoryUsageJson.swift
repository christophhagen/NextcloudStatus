import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache {

    public struct MemoryUsage {

        public let used_memory: Int

        public let free_memory: Int

        public let wasted_memory: Int

        public let current_wasted_percentage: Double
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.MemoryUsage: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.MemoryUsage: Equatable {

}
