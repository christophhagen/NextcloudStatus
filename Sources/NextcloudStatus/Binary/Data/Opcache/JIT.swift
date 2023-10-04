import Foundation

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache {

    public struct JIT {

        public let isEnabled: Bool

        public let isOn: Bool

        public let kind: Int

        public let optimizationLevel: Int

        public let optimizationFlags: Int

        public let bufferSize: Int

        public let freeBufferSize: Int
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.JIT: Codable {

    enum CodingKeys: Int, CodingKey {
        case isEnabled = 1
        case isOn = 2
        case kind = 3
        case optimizationLevel = 4
        case optimizationFlags = 5
        case bufferSize = 6
        case freeBufferSize = 7
    }
}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.JIT: Equatable {

}

extension NextcloudStatus.NextcloudData.Server.PHP.Opcache.JIT {

    init(json: NextcloudStatusJson.OCS.NextcloudData.Server.PHP.Opcache.JIT) {
        self.isEnabled = json.enabled
        self.isOn = json.on
        self.kind = json.kind
        self.optimizationLevel = json.opt_level
        self.optimizationFlags = json.opt_flags
        self.bufferSize = json.buffer_size
        self.freeBufferSize = json.buffer_free
    }
}
