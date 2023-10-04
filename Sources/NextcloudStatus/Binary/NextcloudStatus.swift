import Foundation

public struct NextcloudStatus {

    public let metadata: Metadata

    public let data: NextcloudData
}

extension NextcloudStatus: Codable {
    
    enum CodingKeys: Int, CodingKey {
        case metadata = 1
        case data = 2
    }
}

extension NextcloudStatus: Equatable {
    
}

extension NextcloudStatus {

    init(json: NextcloudStatusJson.OCS) throws {
        self.metadata = .init(json: json.meta)
        self.data = try .init(json: json.data)
    }
}
