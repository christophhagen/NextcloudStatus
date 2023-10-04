import Foundation

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache {

    public struct MemoryUsage {

        public let usedMemory: Int

        public let freeMemory: Int

        public let wastedMemory: Int

        public var percentageOfWastedMemory: Double {
            Double(wastedMemory) / Double(freeMemory + usedMemory)
        }
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.MemoryUsage: Codable {

    enum CodingKeys: Int, CodingKey {
        case usedMemory = 1
        case freeMemory = 2
        case wastedMemory = 3
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.MemoryUsage: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.MemoryUsage {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.MemoryUsage) {
        self.usedMemory = json.used_memory
        self.freeMemory = json.free_memory
        self.wastedMemory = json.wasted_memory
    }
}
