import Foundation

public enum NextcloudError: Error {

    case invalidResponse(statusCode: Int?)
}
