import Foundation

/// A special semantic version with a fourth number
public struct NextcloudVersion {

    /// The major version of the software
    public let major: Int

    /// The minor version of the software
    public let minor: Int

    /// The patch version of the software
    public let patch: Int

    public let build: Int?

    public init(major: Int, minor: Int, patch: Int, build: Int? = nil) {
        self.major = major
        self.minor = minor
        self.patch = patch
        self.build = build
    }
}

extension NextcloudVersion: RawRepresentable {

    public var rawValue: String {
        guard let build else {
            return "\(major).\(minor).\(patch)"
        }
        return "\(major).\(minor).\(patch).\(build)"
    }

    public init?(rawValue: String) {
        let parts = rawValue
            .trimmingCharacters(in: .whitespaces)
            .components(separatedBy: ".")
        guard parts.count == 3 || parts.count == 4 else {
            return nil
        }
        guard let major = Int(parts[0]),
              let minor = Int(parts[1]),
              let patch = Int(parts[2]) else {
            return nil
        }
        self.major = major
        self.minor = minor
        self.patch = patch

        guard parts.count == 4 else {
            self.build = nil
            return nil
        }
        guard let build = Int(parts[3]) else {
            self.build = nil
            return
        }
        self.build = build
    }
}

extension NextcloudVersion: Decodable {

}

extension NextcloudVersion: Encodable {

}

extension NextcloudVersion: Equatable {

}

extension NextcloudVersion: Hashable {

}

extension NextcloudVersion: Comparable {

    public static func < (lhs: NextcloudVersion, rhs: NextcloudVersion) -> Bool {
        guard lhs.major == rhs.major else {
            return lhs.major < rhs.major
        }
        guard lhs.minor == rhs.minor else {
            return lhs.minor < rhs.minor
        }
        guard lhs.patch == rhs.patch else {
            return lhs.patch < rhs.patch
        }
        guard let lhsBuild = lhs.build,
                let rhsBuild = rhs.build else {
            return false
        }
        return lhsBuild < rhsBuild
    }
}
