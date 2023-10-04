import Foundation

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache {

    public struct InternedStringsUsage {

        public let bufferSize: Int

        public let usedMemory: Int

        public let freeMemory: Int

        public let numberOfStrings: Int
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.InternedStringsUsage: Codable {

    enum CodingKeys: Int, CodingKey {
        case bufferSize = 1
        case usedMemory = 2
        case freeMemory = 3
        case numberOfStrings = 4
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.InternedStringsUsage: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.InternedStringsUsage {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.InternedStringsUsage) {
        self.bufferSize = json.buffer_size
        self.usedMemory = json.used_memory
        self.freeMemory = json.free_memory
        self.numberOfStrings = json.number_of_strings
    }
}
