// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Pinpoint
public enum PinpointErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case methodNotAllowedException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension PinpointErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "MethodNotAllowedException":
            self = .methodNotAllowedException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}