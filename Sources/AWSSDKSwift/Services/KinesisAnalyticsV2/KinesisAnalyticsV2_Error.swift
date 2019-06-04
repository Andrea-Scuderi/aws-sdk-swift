// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisAnalyticsV2
public enum KinesisAnalyticsV2ErrorType: AWSErrorType {
    case codeValidationException(message: String?)
    case concurrentModificationException(message: String?)
    case invalidApplicationConfigurationException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceProvisionedThroughputExceededException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyTagsException(message: String?)
    case unableToDetectSchemaException(message: String?)
    case unsupportedOperationException(message: String?)
}

extension KinesisAnalyticsV2ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CodeValidationException":
            self = .codeValidationException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidApplicationConfigurationException":
            self = .invalidApplicationConfigurationException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceProvisionedThroughputExceededException":
            self = .resourceProvisionedThroughputExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "UnableToDetectSchemaException":
            self = .unableToDetectSchemaException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        default:
            return nil
        }
    }
}