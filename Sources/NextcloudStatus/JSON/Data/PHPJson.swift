import Foundation

extension NextcloudStatusJson.OCS.NextcloudData.Server {

    public struct PHP {

        public let version: String
        
        public let memory_limit: Int

        public let max_execution_time: Int

        public let upload_max_filesize: Int

        public let opcache: Opcache?

        public let apcu: [String]?

        public let extensions: [String]?
    }
}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP: Codable {

}

extension NextcloudStatusJson.OCS.NextcloudData.Server.PHP: Equatable {

}
