// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

import S3Middleware

public struct S3 {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        let middlewares = [S3RequestMiddleware()] + middlewares
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "s3",
            serviceProtocol: ServiceProtocol(type: .restxml),
            apiVersion: "2006-03-01",
            endpoint: endpoint,
            serviceEndpoints: ["ap-east-1": "s3.ap-east-1.amazonaws.com", "ap-northeast-1": "s3.ap-northeast-1.amazonaws.com", "ap-northeast-2": "s3.ap-northeast-2.amazonaws.com", "ap-south-1": "s3.ap-south-1.amazonaws.com", "ap-southeast-1": "s3.ap-southeast-1.amazonaws.com", "ap-southeast-2": "s3.ap-southeast-2.amazonaws.com", "ca-central-1": "s3.ca-central-1.amazonaws.com", "eu-central-1": "s3.eu-central-1.amazonaws.com", "eu-north-1": "s3.eu-north-1.amazonaws.com", "eu-west-1": "s3.eu-west-1.amazonaws.com", "eu-west-2": "s3.eu-west-2.amazonaws.com", "eu-west-3": "s3.eu-west-3.amazonaws.com", "me-south-1": "s3.me-south-1.amazonaws.com", "s3-external-1": "s3-external-1.amazonaws.com", "sa-east-1": "s3.sa-east-1.amazonaws.com", "us-east-1": "s3.amazonaws.com", "us-east-2": "s3.us-east-2.amazonaws.com", "us-west-1": "s3.us-west-1.amazonaws.com", "us-west-2": "s3.us-west-2.amazonaws.com"],
            partitionEndpoint: "us-east-1",
            middlewares: middlewares,
            possibleErrorTypes: [S3ErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Aborts a multipart upload. To verify that all parts have been removed, so you don't get charged for the part storage, you should call the List Parts operation and ensure the parts list is empty.
    public func abortMultipartUpload(_ input: AbortMultipartUploadRequest) -> Future<AbortMultipartUploadOutput> {
        return client.send(operation: "AbortMultipartUpload", path: "/{Bucket}/{Key+}", httpMethod: "DELETE", input: input)
    }

    ///  Completes a multipart upload by assembling previously uploaded parts.
    public func completeMultipartUpload(_ input: CompleteMultipartUploadRequest) -> Future<CompleteMultipartUploadOutput> {
        return client.send(operation: "CompleteMultipartUpload", path: "/{Bucket}/{Key+}", httpMethod: "POST", input: input)
    }

    ///  Creates a copy of an object that is already stored in Amazon S3.
    public func copyObject(_ input: CopyObjectRequest) -> Future<CopyObjectOutput> {
        return client.send(operation: "CopyObject", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  Creates a new bucket.
    public func createBucket(_ input: CreateBucketRequest) -> Future<CreateBucketOutput> {
        return client.send(operation: "CreateBucket", path: "/{Bucket}", httpMethod: "PUT", input: input)
    }

    ///  Initiates a multipart upload and returns an upload ID.  Note: After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
    public func createMultipartUpload(_ input: CreateMultipartUploadRequest) -> Future<CreateMultipartUploadOutput> {
        return client.send(operation: "CreateMultipartUpload", path: "/{Bucket}/{Key+}?uploads", httpMethod: "POST", input: input)
    }

    ///  Deletes the bucket. All objects (including all object versions and Delete Markers) in the bucket must be deleted before the bucket itself can be deleted.
    @discardableResult public func deleteBucket(_ input: DeleteBucketRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucket", path: "/{Bucket}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an analytics configuration for the bucket (specified by the analytics configuration ID). To use this operation, you must have permissions to perform the s3:PutAnalyticsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. 
    @discardableResult public func deleteBucketAnalyticsConfiguration(_ input: DeleteBucketAnalyticsConfigurationRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the CORS configuration information set for the bucket.
    @discardableResult public func deleteBucketCors(_ input: DeleteBucketCorsRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketCors", path: "/{Bucket}?cors", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the server-side encryption configuration from the bucket.
    @discardableResult public func deleteBucketEncryption(_ input: DeleteBucketEncryptionRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an inventory configuration (identified by the inventory ID) from the bucket.
    @discardableResult public func deleteBucketInventoryConfiguration(_ input: DeleteBucketInventoryConfigurationRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the lifecycle configuration from the bucket.
    @discardableResult public func deleteBucketLifecycle(_ input: DeleteBucketLifecycleRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a metrics configuration (specified by the metrics configuration ID) from the bucket.
    @discardableResult public func deleteBucketMetricsConfiguration(_ input: DeleteBucketMetricsConfigurationRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the policy from the bucket.
    @discardableResult public func deleteBucketPolicy(_ input: DeleteBucketPolicyRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketPolicy", path: "/{Bucket}?policy", httpMethod: "DELETE", input: input)
    }

    ///   Deletes the replication configuration from the bucket. For information about replication configuration, see Cross-Region Replication (CRR) in the Amazon S3 Developer Guide. 
    @discardableResult public func deleteBucketReplication(_ input: DeleteBucketReplicationRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketReplication", path: "/{Bucket}?replication", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the tags from the bucket.
    @discardableResult public func deleteBucketTagging(_ input: DeleteBucketTaggingRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketTagging", path: "/{Bucket}?tagging", httpMethod: "DELETE", input: input)
    }

    ///  This operation removes the website configuration from the bucket.
    @discardableResult public func deleteBucketWebsite(_ input: DeleteBucketWebsiteRequest) -> Future<Void> {
        return client.send(operation: "DeleteBucketWebsite", path: "/{Bucket}?website", httpMethod: "DELETE", input: input)
    }

    ///  Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects.
    public func deleteObject(_ input: DeleteObjectRequest) -> Future<DeleteObjectOutput> {
        return client.send(operation: "DeleteObject", path: "/{Bucket}/{Key+}", httpMethod: "DELETE", input: input)
    }

    ///  Removes the tag-set from an existing object.
    public func deleteObjectTagging(_ input: DeleteObjectTaggingRequest) -> Future<DeleteObjectTaggingOutput> {
        return client.send(operation: "DeleteObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "DELETE", input: input)
    }

    ///  This operation enables you to delete multiple objects from a bucket using a single HTTP request. You may specify up to 1000 keys.
    public func deleteObjects(_ input: DeleteObjectsRequest) -> Future<DeleteObjectsOutput> {
        return client.send(operation: "DeleteObjects", path: "/{Bucket}?delete", httpMethod: "POST", input: input)
    }

    ///  Removes the PublicAccessBlock configuration from an Amazon S3 bucket.
    @discardableResult public func deletePublicAccessBlock(_ input: DeletePublicAccessBlockRequest) -> Future<Void> {
        return client.send(operation: "DeletePublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "DELETE", input: input)
    }

    ///  Returns the accelerate configuration of a bucket.
    public func getBucketAccelerateConfiguration(_ input: GetBucketAccelerateConfigurationRequest) -> Future<GetBucketAccelerateConfigurationOutput> {
        return client.send(operation: "GetBucketAccelerateConfiguration", path: "/{Bucket}?accelerate", httpMethod: "GET", input: input)
    }

    ///  Gets the access control policy for the bucket.
    public func getBucketAcl(_ input: GetBucketAclRequest) -> Future<GetBucketAclOutput> {
        return client.send(operation: "GetBucketAcl", path: "/{Bucket}?acl", httpMethod: "GET", input: input)
    }

    ///  Gets an analytics configuration for the bucket (specified by the analytics configuration ID).
    public func getBucketAnalyticsConfiguration(_ input: GetBucketAnalyticsConfigurationRequest) -> Future<GetBucketAnalyticsConfigurationOutput> {
        return client.send(operation: "GetBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "GET", input: input)
    }

    ///  Returns the CORS configuration for the bucket.
    public func getBucketCors(_ input: GetBucketCorsRequest) -> Future<GetBucketCorsOutput> {
        return client.send(operation: "GetBucketCors", path: "/{Bucket}?cors", httpMethod: "GET", input: input)
    }

    ///  Returns the server-side encryption configuration of a bucket.
    public func getBucketEncryption(_ input: GetBucketEncryptionRequest) -> Future<GetBucketEncryptionOutput> {
        return client.send(operation: "GetBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "GET", input: input)
    }

    ///  Returns an inventory configuration (identified by the inventory ID) from the bucket.
    public func getBucketInventoryConfiguration(_ input: GetBucketInventoryConfigurationRequest) -> Future<GetBucketInventoryConfigurationOutput> {
        return client.send(operation: "GetBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "GET", input: input)
    }

    ///   No longer used, see the GetBucketLifecycleConfiguration operation.
    @available(*, deprecated, message:"GetBucketLifecycle is deprecated.")
    public func getBucketLifecycle(_ input: GetBucketLifecycleRequest) -> Future<GetBucketLifecycleOutput> {
        return client.send(operation: "GetBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "GET", input: input)
    }

    ///  Returns the lifecycle configuration information set on the bucket.
    public func getBucketLifecycleConfiguration(_ input: GetBucketLifecycleConfigurationRequest) -> Future<GetBucketLifecycleConfigurationOutput> {
        return client.send(operation: "GetBucketLifecycleConfiguration", path: "/{Bucket}?lifecycle", httpMethod: "GET", input: input)
    }

    ///  Returns the region the bucket resides in.
    public func getBucketLocation(_ input: GetBucketLocationRequest) -> Future<GetBucketLocationOutput> {
        return client.send(operation: "GetBucketLocation", path: "/{Bucket}?location", httpMethod: "GET", input: input)
    }

    ///  Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.
    public func getBucketLogging(_ input: GetBucketLoggingRequest) -> Future<GetBucketLoggingOutput> {
        return client.send(operation: "GetBucketLogging", path: "/{Bucket}?logging", httpMethod: "GET", input: input)
    }

    ///  Gets a metrics configuration (specified by the metrics configuration ID) from the bucket.
    public func getBucketMetricsConfiguration(_ input: GetBucketMetricsConfigurationRequest) -> Future<GetBucketMetricsConfigurationOutput> {
        return client.send(operation: "GetBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "GET", input: input)
    }

    ///   No longer used, see the GetBucketNotificationConfiguration operation.
    @available(*, deprecated, message:"GetBucketNotification is deprecated.")
    public func getBucketNotification(_ input: GetBucketNotificationConfigurationRequest) -> Future<NotificationConfigurationDeprecated> {
        return client.send(operation: "GetBucketNotification", path: "/{Bucket}?notification", httpMethod: "GET", input: input)
    }

    ///  Returns the notification configuration of a bucket.
    public func getBucketNotificationConfiguration(_ input: GetBucketNotificationConfigurationRequest) -> Future<NotificationConfiguration> {
        return client.send(operation: "GetBucketNotificationConfiguration", path: "/{Bucket}?notification", httpMethod: "GET", input: input)
    }

    ///  Returns the policy of a specified bucket.
    public func getBucketPolicy(_ input: GetBucketPolicyRequest) -> Future<GetBucketPolicyOutput> {
        return client.send(operation: "GetBucketPolicy", path: "/{Bucket}?policy", httpMethod: "GET", input: input)
    }

    ///  Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public.
    public func getBucketPolicyStatus(_ input: GetBucketPolicyStatusRequest) -> Future<GetBucketPolicyStatusOutput> {
        return client.send(operation: "GetBucketPolicyStatus", path: "/{Bucket}?policyStatus", httpMethod: "GET", input: input)
    }

    ///  Returns the replication configuration of a bucket.   It can take a while to propagate the put or delete a replication configuration to all Amazon S3 systems. Therefore, a get request soon after put or delete can return a wrong result.  
    public func getBucketReplication(_ input: GetBucketReplicationRequest) -> Future<GetBucketReplicationOutput> {
        return client.send(operation: "GetBucketReplication", path: "/{Bucket}?replication", httpMethod: "GET", input: input)
    }

    ///  Returns the request payment configuration of a bucket.
    public func getBucketRequestPayment(_ input: GetBucketRequestPaymentRequest) -> Future<GetBucketRequestPaymentOutput> {
        return client.send(operation: "GetBucketRequestPayment", path: "/{Bucket}?requestPayment", httpMethod: "GET", input: input)
    }

    ///  Returns the tag set associated with the bucket.
    public func getBucketTagging(_ input: GetBucketTaggingRequest) -> Future<GetBucketTaggingOutput> {
        return client.send(operation: "GetBucketTagging", path: "/{Bucket}?tagging", httpMethod: "GET", input: input)
    }

    ///  Returns the versioning state of a bucket.
    public func getBucketVersioning(_ input: GetBucketVersioningRequest) -> Future<GetBucketVersioningOutput> {
        return client.send(operation: "GetBucketVersioning", path: "/{Bucket}?versioning", httpMethod: "GET", input: input)
    }

    ///  Returns the website configuration for a bucket.
    public func getBucketWebsite(_ input: GetBucketWebsiteRequest) -> Future<GetBucketWebsiteOutput> {
        return client.send(operation: "GetBucketWebsite", path: "/{Bucket}?website", httpMethod: "GET", input: input)
    }

    ///  Retrieves objects from Amazon S3.
    public func getObject(_ input: GetObjectRequest) -> Future<GetObjectOutput> {
        return client.send(operation: "GetObject", path: "/{Bucket}/{Key+}", httpMethod: "GET", input: input)
    }

    ///  Returns the access control list (ACL) of an object.
    public func getObjectAcl(_ input: GetObjectAclRequest) -> Future<GetObjectAclOutput> {
        return client.send(operation: "GetObjectAcl", path: "/{Bucket}/{Key+}?acl", httpMethod: "GET", input: input)
    }

    ///  Gets an object's current Legal Hold status.
    public func getObjectLegalHold(_ input: GetObjectLegalHoldRequest) -> Future<GetObjectLegalHoldOutput> {
        return client.send(operation: "GetObjectLegalHold", path: "/{Bucket}/{Key+}?legal-hold", httpMethod: "GET", input: input)
    }

    ///  Gets the object lock configuration for a bucket. The rule specified in the object lock configuration will be applied by default to every new object placed in the specified bucket.
    public func getObjectLockConfiguration(_ input: GetObjectLockConfigurationRequest) -> Future<GetObjectLockConfigurationOutput> {
        return client.send(operation: "GetObjectLockConfiguration", path: "/{Bucket}?object-lock", httpMethod: "GET", input: input)
    }

    ///  Retrieves an object's retention settings.
    public func getObjectRetention(_ input: GetObjectRetentionRequest) -> Future<GetObjectRetentionOutput> {
        return client.send(operation: "GetObjectRetention", path: "/{Bucket}/{Key+}?retention", httpMethod: "GET", input: input)
    }

    ///  Returns the tag-set of an object.
    public func getObjectTagging(_ input: GetObjectTaggingRequest) -> Future<GetObjectTaggingOutput> {
        return client.send(operation: "GetObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "GET", input: input)
    }

    ///  Return torrent files from a bucket.
    public func getObjectTorrent(_ input: GetObjectTorrentRequest) -> Future<GetObjectTorrentOutput> {
        return client.send(operation: "GetObjectTorrent", path: "/{Bucket}/{Key+}?torrent", httpMethod: "GET", input: input)
    }

    ///  Retrieves the PublicAccessBlock configuration for an Amazon S3 bucket.
    public func getPublicAccessBlock(_ input: GetPublicAccessBlockRequest) -> Future<GetPublicAccessBlockOutput> {
        return client.send(operation: "GetPublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "GET", input: input)
    }

    ///  This operation is useful to determine if a bucket exists and you have permission to access it.
    @discardableResult public func headBucket(_ input: HeadBucketRequest) -> Future<Void> {
        return client.send(operation: "HeadBucket", path: "/{Bucket}", httpMethod: "HEAD", input: input)
    }

    ///  The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.
    public func headObject(_ input: HeadObjectRequest) -> Future<HeadObjectOutput> {
        return client.send(operation: "HeadObject", path: "/{Bucket}/{Key+}", httpMethod: "HEAD", input: input)
    }

    ///  Lists the analytics configurations for the bucket.
    public func listBucketAnalyticsConfigurations(_ input: ListBucketAnalyticsConfigurationsRequest) -> Future<ListBucketAnalyticsConfigurationsOutput> {
        return client.send(operation: "ListBucketAnalyticsConfigurations", path: "/{Bucket}?analytics", httpMethod: "GET", input: input)
    }

    ///  Returns a list of inventory configurations for the bucket.
    public func listBucketInventoryConfigurations(_ input: ListBucketInventoryConfigurationsRequest) -> Future<ListBucketInventoryConfigurationsOutput> {
        return client.send(operation: "ListBucketInventoryConfigurations", path: "/{Bucket}?inventory", httpMethod: "GET", input: input)
    }

    ///  Lists the metrics configurations for the bucket.
    public func listBucketMetricsConfigurations(_ input: ListBucketMetricsConfigurationsRequest) -> Future<ListBucketMetricsConfigurationsOutput> {
        return client.send(operation: "ListBucketMetricsConfigurations", path: "/{Bucket}?metrics", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all buckets owned by the authenticated sender of the request.
    public func listBuckets() -> Future<ListBucketsOutput> {
        return client.send(operation: "ListBuckets", path: "/", httpMethod: "GET")
    }

    ///  This operation lists in-progress multipart uploads.
    public func listMultipartUploads(_ input: ListMultipartUploadsRequest) -> Future<ListMultipartUploadsOutput> {
        return client.send(operation: "ListMultipartUploads", path: "/{Bucket}?uploads", httpMethod: "GET", input: input)
    }

    ///  Returns metadata about all of the versions of objects in a bucket.
    public func listObjectVersions(_ input: ListObjectVersionsRequest) -> Future<ListObjectVersionsOutput> {
        return client.send(operation: "ListObjectVersions", path: "/{Bucket}?versions", httpMethod: "GET", input: input)
    }

    ///  Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket.
    public func listObjects(_ input: ListObjectsRequest) -> Future<ListObjectsOutput> {
        return client.send(operation: "ListObjects", path: "/{Bucket}", httpMethod: "GET", input: input)
    }

    ///  Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. Note: ListObjectsV2 is the revised List Objects API and we recommend you use this revised API for new application development.
    public func listObjectsV2(_ input: ListObjectsV2Request) -> Future<ListObjectsV2Output> {
        return client.send(operation: "ListObjectsV2", path: "/{Bucket}?list-type=2", httpMethod: "GET", input: input)
    }

    ///  Lists the parts that have been uploaded for a specific multipart upload.
    public func listParts(_ input: ListPartsRequest) -> Future<ListPartsOutput> {
        return client.send(operation: "ListParts", path: "/{Bucket}/{Key+}", httpMethod: "GET", input: input)
    }

    ///  Sets the accelerate configuration of an existing bucket.
    @discardableResult public func putBucketAccelerateConfiguration(_ input: PutBucketAccelerateConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketAccelerateConfiguration", path: "/{Bucket}?accelerate", httpMethod: "PUT", input: input)
    }

    ///  Sets the permissions on a bucket using access control lists (ACL).
    @discardableResult public func putBucketAcl(_ input: PutBucketAclRequest) -> Future<Void> {
        return client.send(operation: "PutBucketAcl", path: "/{Bucket}?acl", httpMethod: "PUT", input: input)
    }

    ///  Sets an analytics configuration for the bucket (specified by the analytics configuration ID).
    @discardableResult public func putBucketAnalyticsConfiguration(_ input: PutBucketAnalyticsConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketAnalyticsConfiguration", path: "/{Bucket}?analytics", httpMethod: "PUT", input: input)
    }

    ///  Sets the CORS configuration for a bucket.
    @discardableResult public func putBucketCors(_ input: PutBucketCorsRequest) -> Future<Void> {
        return client.send(operation: "PutBucketCors", path: "/{Bucket}?cors", httpMethod: "PUT", input: input)
    }

    ///  Creates a new server-side encryption configuration (or replaces an existing one, if present).
    @discardableResult public func putBucketEncryption(_ input: PutBucketEncryptionRequest) -> Future<Void> {
        return client.send(operation: "PutBucketEncryption", path: "/{Bucket}?encryption", httpMethod: "PUT", input: input)
    }

    ///  Adds an inventory configuration (identified by the inventory ID) from the bucket.
    @discardableResult public func putBucketInventoryConfiguration(_ input: PutBucketInventoryConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketInventoryConfiguration", path: "/{Bucket}?inventory", httpMethod: "PUT", input: input)
    }

    ///   No longer used, see the PutBucketLifecycleConfiguration operation.
    @available(*, deprecated, message:"PutBucketLifecycle is deprecated.")
    @discardableResult public func putBucketLifecycle(_ input: PutBucketLifecycleRequest) -> Future<Void> {
        return client.send(operation: "PutBucketLifecycle", path: "/{Bucket}?lifecycle", httpMethod: "PUT", input: input)
    }

    ///  Sets lifecycle configuration for your bucket. If a lifecycle configuration exists, it replaces it.
    @discardableResult public func putBucketLifecycleConfiguration(_ input: PutBucketLifecycleConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketLifecycleConfiguration", path: "/{Bucket}?lifecycle", httpMethod: "PUT", input: input)
    }

    ///  Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters. To set the logging status of a bucket, you must be the bucket owner.
    @discardableResult public func putBucketLogging(_ input: PutBucketLoggingRequest) -> Future<Void> {
        return client.send(operation: "PutBucketLogging", path: "/{Bucket}?logging", httpMethod: "PUT", input: input)
    }

    ///  Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.
    @discardableResult public func putBucketMetricsConfiguration(_ input: PutBucketMetricsConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketMetricsConfiguration", path: "/{Bucket}?metrics", httpMethod: "PUT", input: input)
    }

    ///   No longer used, see the PutBucketNotificationConfiguration operation.
    @available(*, deprecated, message:"PutBucketNotification is deprecated.")
    @discardableResult public func putBucketNotification(_ input: PutBucketNotificationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketNotification", path: "/{Bucket}?notification", httpMethod: "PUT", input: input)
    }

    ///  Enables notifications of specified events for a bucket.
    @discardableResult public func putBucketNotificationConfiguration(_ input: PutBucketNotificationConfigurationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketNotificationConfiguration", path: "/{Bucket}?notification", httpMethod: "PUT", input: input)
    }

    ///  Applies an Amazon S3 bucket policy to an Amazon S3 bucket.
    @discardableResult public func putBucketPolicy(_ input: PutBucketPolicyRequest) -> Future<Void> {
        return client.send(operation: "PutBucketPolicy", path: "/{Bucket}?policy", httpMethod: "PUT", input: input)
    }

    ///   Creates a replication configuration or replaces an existing one. For more information, see Cross-Region Replication (CRR) in the Amazon S3 Developer Guide. 
    @discardableResult public func putBucketReplication(_ input: PutBucketReplicationRequest) -> Future<Void> {
        return client.send(operation: "PutBucketReplication", path: "/{Bucket}?replication", httpMethod: "PUT", input: input)
    }

    ///  Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. Documentation on requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
    @discardableResult public func putBucketRequestPayment(_ input: PutBucketRequestPaymentRequest) -> Future<Void> {
        return client.send(operation: "PutBucketRequestPayment", path: "/{Bucket}?requestPayment", httpMethod: "PUT", input: input)
    }

    ///  Sets the tags for a bucket.
    @discardableResult public func putBucketTagging(_ input: PutBucketTaggingRequest) -> Future<Void> {
        return client.send(operation: "PutBucketTagging", path: "/{Bucket}?tagging", httpMethod: "PUT", input: input)
    }

    ///  Sets the versioning state of an existing bucket. To set the versioning state, you must be the bucket owner.
    @discardableResult public func putBucketVersioning(_ input: PutBucketVersioningRequest) -> Future<Void> {
        return client.send(operation: "PutBucketVersioning", path: "/{Bucket}?versioning", httpMethod: "PUT", input: input)
    }

    ///  Set the website configuration for a bucket.
    @discardableResult public func putBucketWebsite(_ input: PutBucketWebsiteRequest) -> Future<Void> {
        return client.send(operation: "PutBucketWebsite", path: "/{Bucket}?website", httpMethod: "PUT", input: input)
    }

    ///  Adds an object to a bucket.
    public func putObject(_ input: PutObjectRequest) -> Future<PutObjectOutput> {
        return client.send(operation: "PutObject", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket
    public func putObjectAcl(_ input: PutObjectAclRequest) -> Future<PutObjectAclOutput> {
        return client.send(operation: "PutObjectAcl", path: "/{Bucket}/{Key+}?acl", httpMethod: "PUT", input: input)
    }

    ///  Applies a Legal Hold configuration to the specified object.
    public func putObjectLegalHold(_ input: PutObjectLegalHoldRequest) -> Future<PutObjectLegalHoldOutput> {
        return client.send(operation: "PutObjectLegalHold", path: "/{Bucket}/{Key+}?legal-hold", httpMethod: "PUT", input: input)
    }

    ///  Places an object lock configuration on the specified bucket. The rule specified in the object lock configuration will be applied by default to every new object placed in the specified bucket.
    public func putObjectLockConfiguration(_ input: PutObjectLockConfigurationRequest) -> Future<PutObjectLockConfigurationOutput> {
        return client.send(operation: "PutObjectLockConfiguration", path: "/{Bucket}?object-lock", httpMethod: "PUT", input: input)
    }

    ///  Places an Object Retention configuration on an object.
    public func putObjectRetention(_ input: PutObjectRetentionRequest) -> Future<PutObjectRetentionOutput> {
        return client.send(operation: "PutObjectRetention", path: "/{Bucket}/{Key+}?retention", httpMethod: "PUT", input: input)
    }

    ///  Sets the supplied tag-set to an object that already exists in a bucket
    public func putObjectTagging(_ input: PutObjectTaggingRequest) -> Future<PutObjectTaggingOutput> {
        return client.send(operation: "PutObjectTagging", path: "/{Bucket}/{Key+}?tagging", httpMethod: "PUT", input: input)
    }

    ///  Creates or modifies the PublicAccessBlock configuration for an Amazon S3 bucket.
    @discardableResult public func putPublicAccessBlock(_ input: PutPublicAccessBlockRequest) -> Future<Void> {
        return client.send(operation: "PutPublicAccessBlock", path: "/{Bucket}?publicAccessBlock", httpMethod: "PUT", input: input)
    }

    ///  Restores an archived copy of an object back into Amazon S3
    public func restoreObject(_ input: RestoreObjectRequest) -> Future<RestoreObjectOutput> {
        return client.send(operation: "RestoreObject", path: "/{Bucket}/{Key+}?restore", httpMethod: "POST", input: input)
    }

    ///  This operation filters the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response.
    @discardableResult public func selectObjectContent(_ input: SelectObjectContentRequest) -> Future<Void> {
        return client.send(operation: "SelectObjectContent", path: "/{Bucket}/{Key+}?select&select-type=2", httpMethod: "POST", input: input)
    }

    ///  Uploads a part in a multipart upload.  Note: After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.
    public func uploadPart(_ input: UploadPartRequest) -> Future<UploadPartOutput> {
        return client.send(operation: "UploadPart", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }

    ///  Uploads a part by copying data from an existing object as data source.
    public func uploadPartCopy(_ input: UploadPartCopyRequest) -> Future<UploadPartCopyOutput> {
        return client.send(operation: "UploadPartCopy", path: "/{Bucket}/{Key+}", httpMethod: "PUT", input: input)
    }
}
