import Foundation

extension NextcloudStatus.NextcloudData.Nextcloud {

    public struct System {

        public let version: NextcloudVersion

        public let theme: String

        public let hasAvatarsEnabled: Bool

        public let hasPreviewsEnabled: Bool

        public let localMemcachePath: String

        public let distributedMemcachePath: String?

        public let isFilelockingEnabled: Bool

        public let lockingMemcachePath: String

        public let isInDebugMode: Bool

        public let freeSpace: Int

        public let cpuLoads: [Double]

        public let numberOfCpus: Int?

        public let totalMemory: Int

        public let freeMemory: Int

        public let totalSwap: Int

        public let freeSwap: Int

        public let apps: Apps?
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.System: Codable {

    enum CodingKeys: Int, CodingKey {
        case version
        case theme
        case hasAvatarsEnabled
        case hasPreviewsEnabled
        case localMemcachePath
        case distributedMemcachePath
        case isFilelockingEnabled
        case lockingMemcachePath
        case isInDebugMode
        case freeSpace
        case cpuLoads
        case totalMemory
        case freeMemory
        case totalSwap
        case freeSwap
        case apps
        case numberOfCpus
    }
}

extension NextcloudStatus.NextcloudData.Nextcloud.System: Equatable {

}

extension NextcloudStatus.NextcloudData.Nextcloud.System {
    
    init(json: NextcloudStatusJson.OCS.NextcloudData.Nextcloud.System) throws {
        guard let version = NextcloudVersion(rawValue: json.version) else {
            let context = DecodingError.Context(codingPath: [
                NextcloudStatus.CodingKeys.data,
                NextcloudStatus.NextcloudData.Nextcloud.CodingKeys.system,
                CodingKeys.version
            ], debugDescription: "The version string '\(json.version)' is invalid")
            throw DecodingError.typeMismatch(NextcloudVersion.self, context)
        }
        self.version = version
        self.theme = json.theme
        self.hasAvatarsEnabled = try Self.convert(bool: json.enable_avatars, key: .hasAvatarsEnabled)
        self.hasPreviewsEnabled = try Self.convert(bool: json.enable_previews, key: .hasPreviewsEnabled)
        self.localMemcachePath = json.memcacheLocal
        self.distributedMemcachePath = .init(possible: json.memcacheDistributed)
        self.isFilelockingEnabled = try Self.convert(bool: json.filelockingEnabled, key: .isFilelockingEnabled)
        self.lockingMemcachePath = json.memcacheLocking
        self.isInDebugMode = try Self.convert(bool: json.debug, key: .isInDebugMode)
        self.freeSpace = json.freespace
        self.cpuLoads = json.cpuload
        self.numberOfCpus = json.cpunum
        self.totalMemory = json.mem_total
        self.freeMemory = json.mem_free
        self.totalSwap = json.swap_total
        self.freeSwap = json.swap_free
        if let apps = json.apps {
            self.apps = .init(json: apps)
        } else {
            self.apps = nil
        }
    }

    private static func convert(bool: String, key: CodingKeys) throws -> Bool {
        guard let value = bool.bool else {
            let context = DecodingError.Context(codingPath: [
                NextcloudStatus.CodingKeys.data,
                NextcloudStatus.NextcloudData.Nextcloud.CodingKeys.system,
                key
            ], debugDescription: "The string is not a valid bool representation")
            throw DecodingError.typeMismatch(Bool.self, context)
        }
        return value
    }
}

private extension String {

    var bool: Bool? {
        switch lowercased() {
        case "yes", "true":
            return true
        case "no", "false":
            return false
        default:
            return nil
        }
    }
}

private extension Optional where Wrapped == String {

    init(possible: String) {
        switch possible.lowercased() {
        case "none", "nil":
            self = .none
        default:
            self = possible
        }
    }
}
