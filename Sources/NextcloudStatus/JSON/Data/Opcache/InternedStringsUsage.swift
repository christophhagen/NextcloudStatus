import Foundation

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache {
    
    public struct InternedStringsUsage {
        
        public let buffer_size: Int
        
        public let used_memory: Int
        
        public let free_memory: Int
        
        public let number_of_strings: Int
    }
}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache.InternedStringsUsage: Codable {

}

extension NextCloudJsonStatus.OCS.NextcloudData.Server.PHP.Opcache.InternedStringsUsage: Equatable {

}
