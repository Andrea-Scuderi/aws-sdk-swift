// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension PI {

    public struct ResponseResourceMetricKey: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: false, type: .map), 
            AWSShapeMember(label: "Metric", required: true, type: .string)
        ]
        /// The valid dimensions for the metric.
        public let dimensions: [String: String]?
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String

        public init(dimensions: [String: String]? = nil, metric: String) {
            self.dimensions = dimensions
            self.metric = metric
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
            case metric = "Metric"
        }
    }

    public struct DescribeDimensionKeysRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Metric", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "EndTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "PeriodInSeconds", required: false, type: .integer), 
            AWSShapeMember(label: "Filter", required: false, type: .map), 
            AWSShapeMember(label: "StartTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "GroupBy", required: true, type: .structure), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ServiceType", required: true, type: .enum), 
            AWSShapeMember(label: "PartitionBy", required: false, type: .structure), 
            AWSShapeMember(label: "Identifier", required: true, type: .string)
        ]
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String
        /// The maximum number of items to return in the response. If more items exist than the specified MaxRecords value, a pagination token is included in the response so that the remaining results can be retrieved. 
        public let maxResults: Int32?
        /// The date and time specifying the end of the requested time series data. The value specified is exclusive - data points less than (but not equal to) EndTime will be returned. The value for EndTime must be later than the value for StartTime.
        public let endTime: TimeStamp
        /// The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)    3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
        public let periodInSeconds: Int32?
        /// One or more filters to apply in the request. Restrictions:   Any number of filters by the same dimension, as specified in the GroupBy or Partition parameters.   A single filter for any other dimension in this dimension group.  
        public let filter: [String: String]?
        /// The date and time specifying the beginning of the requested time series data. You can't specify a StartTime that's earlier than 7 days ago. The value specified is inclusive - data points equal to or greater than StartTime will be returned. The value for StartTime must be earlier than the value for EndTime.
        public let startTime: TimeStamp
        /// A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
        public let groupBy: DimensionGroup
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// The AWS service for which Performance Insights will return metrics. The only valid value for ServiceType is: RDS 
        public let serviceType: ServiceType
        /// For each dimension specified in GroupBy, specify a secondary dimension to further subdivide the partition keys in the response.
        public let partitionBy: DimensionGroup?
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String

        public init(metric: String, maxResults: Int32? = nil, endTime: TimeStamp, periodInSeconds: Int32? = nil, filter: [String: String]? = nil, startTime: TimeStamp, groupBy: DimensionGroup, nextToken: String? = nil, serviceType: ServiceType, partitionBy: DimensionGroup? = nil, identifier: String) {
            self.metric = metric
            self.maxResults = maxResults
            self.endTime = endTime
            self.periodInSeconds = periodInSeconds
            self.filter = filter
            self.startTime = startTime
            self.groupBy = groupBy
            self.nextToken = nextToken
            self.serviceType = serviceType
            self.partitionBy = partitionBy
            self.identifier = identifier
        }

        private enum CodingKeys: String, CodingKey {
            case metric = "Metric"
            case maxResults = "MaxResults"
            case endTime = "EndTime"
            case periodInSeconds = "PeriodInSeconds"
            case filter = "Filter"
            case startTime = "StartTime"
            case groupBy = "GroupBy"
            case nextToken = "NextToken"
            case serviceType = "ServiceType"
            case partitionBy = "PartitionBy"
            case identifier = "Identifier"
        }
    }

    public struct DimensionKeyDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Total", required: false, type: .double), 
            AWSShapeMember(label: "Partitions", required: false, type: .list), 
            AWSShapeMember(label: "Dimensions", required: false, type: .map)
        ]
        /// The aggregated metric value for the dimension(s), over the requested time range.
        public let total: Double?
        /// If PartitionBy was specified, PartitionKeys contains the dimensions that were.
        public let partitions: [Double]?
        /// A map of name-value pairs for the dimensions in the group.
        public let dimensions: [String: String]?

        public init(total: Double? = nil, partitions: [Double]? = nil, dimensions: [String: String]? = nil) {
            self.total = total
            self.partitions = partitions
            self.dimensions = dimensions
        }

        private enum CodingKeys: String, CodingKey {
            case total = "Total"
            case partitions = "Partitions"
            case dimensions = "Dimensions"
        }
    }

    public struct DimensionGroup: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Limit", required: false, type: .integer), 
            AWSShapeMember(label: "Dimensions", required: false, type: .list), 
            AWSShapeMember(label: "Group", required: true, type: .string)
        ]
        /// The maximum number of items to fetch for this dimension group.
        public let limit: Int32?
        /// A list of specific dimensions from a dimension group. If this parameter is not present, then it signifies that all of the dimensions in the group were requested, or are present in the response. Valid values for elements in the Dimensions array are:   db.user.id   db.user.name   db.host.id   db.host.name   db.sql.id   db.sql.db_id   db.sql.statement   db.sql.tokenized_id   db.sql_tokenized.id   db.sql_tokenized.db_id   db.sql_tokenized.statement   db.wait_event.name   db.wait_event.type   db.wait_event_type.name  
        public let dimensions: [String]?
        /// The name of the dimension group. Valid values are:    db.user     db.host     db.sql     db.sql_tokenized     db.wait_event     db.wait_event_type   
        public let group: String

        public init(limit: Int32? = nil, dimensions: [String]? = nil, group: String) {
            self.limit = limit
            self.dimensions = dimensions
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case dimensions = "Dimensions"
            case group = "Group"
        }
    }

    public struct MetricQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filter", required: false, type: .map), 
            AWSShapeMember(label: "Metric", required: true, type: .string), 
            AWSShapeMember(label: "GroupBy", required: false, type: .structure)
        ]
        /// One or more filters to apply in the request. Restrictions:   Any number of filters by the same dimension, as specified in the GroupBy parameter.   A single filter for any other dimension in this dimension group.  
        public let filter: [String: String]?
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String
        /// A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
        public let groupBy: DimensionGroup?

        public init(filter: [String: String]? = nil, metric: String, groupBy: DimensionGroup? = nil) {
            self.filter = filter
            self.metric = metric
            self.groupBy = groupBy
        }

        private enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case metric = "Metric"
            case groupBy = "GroupBy"
        }
    }

    public struct MetricKeyDataPoints: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataPoints", required: false, type: .list), 
            AWSShapeMember(label: "Key", required: false, type: .structure)
        ]
        /// An array of timestamp-value pairs, representing measurements over a period of time.
        public let dataPoints: [DataPoint]?
        /// The dimension(s) to which the data points apply.
        public let key: ResponseResourceMetricKey?

        public init(dataPoints: [DataPoint]? = nil, key: ResponseResourceMetricKey? = nil) {
            self.dataPoints = dataPoints
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case dataPoints = "DataPoints"
            case key = "Key"
        }
    }

    public struct GetResourceMetricsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "AlignedEndTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Identifier", required: false, type: .string), 
            AWSShapeMember(label: "MetricList", required: false, type: .list), 
            AWSShapeMember(label: "AlignedStartTime", required: false, type: .timestamp)
        ]
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// The end time for the returned metrics, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedEndTime will be greater than or equal to the value of the user-specified Endtime.
        public let alignedEndTime: TimeStamp?
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String?
        /// An array of metric results,, where each array element contains all of the data points for a particular dimension.
        public let metricList: [MetricKeyDataPoints]?
        /// The start time for the returned metrics, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedStartTime will be less than or equal to the value of the user-specified StartTime.
        public let alignedStartTime: TimeStamp?

        public init(nextToken: String? = nil, alignedEndTime: TimeStamp? = nil, identifier: String? = nil, metricList: [MetricKeyDataPoints]? = nil, alignedStartTime: TimeStamp? = nil) {
            self.nextToken = nextToken
            self.alignedEndTime = alignedEndTime
            self.identifier = identifier
            self.metricList = metricList
            self.alignedStartTime = alignedStartTime
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case alignedEndTime = "AlignedEndTime"
            case identifier = "Identifier"
            case metricList = "MetricList"
            case alignedStartTime = "AlignedStartTime"
        }
    }

    public struct DescribeDimensionKeysResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Keys", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "PartitionKeys", required: false, type: .list), 
            AWSShapeMember(label: "AlignedEndTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "AlignedStartTime", required: false, type: .timestamp)
        ]
        /// The dimension keys that were requested.
        public let keys: [DimensionKeyDescription]?
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// If PartitionBy was present in the request, PartitionKeys contains the breakdown of dimension keys by the specified partitions.
        public let partitionKeys: [ResponsePartitionKey]?
        /// The end time for the returned dimension keys, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedEndTime will be greater than or equal to the value of the user-specified Endtime.
        public let alignedEndTime: TimeStamp?
        /// The start time for the returned dimension keys, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedStartTime will be less than or equal to the value of the user-specified StartTime.
        public let alignedStartTime: TimeStamp?

        public init(keys: [DimensionKeyDescription]? = nil, nextToken: String? = nil, partitionKeys: [ResponsePartitionKey]? = nil, alignedEndTime: TimeStamp? = nil, alignedStartTime: TimeStamp? = nil) {
            self.keys = keys
            self.nextToken = nextToken
            self.partitionKeys = partitionKeys
            self.alignedEndTime = alignedEndTime
            self.alignedStartTime = alignedStartTime
        }

        private enum CodingKeys: String, CodingKey {
            case keys = "Keys"
            case nextToken = "NextToken"
            case partitionKeys = "PartitionKeys"
            case alignedEndTime = "AlignedEndTime"
            case alignedStartTime = "AlignedStartTime"
        }
    }

    public struct GetResourceMetricsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MetricQueries", required: true, type: .list), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "EndTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "PeriodInSeconds", required: false, type: .integer), 
            AWSShapeMember(label: "StartTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "ServiceType", required: true, type: .enum), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Identifier", required: true, type: .string)
        ]
        /// An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.
        public let metricQueries: [MetricQuery]
        /// The maximum number of items to return in the response. If more items exist than the specified MaxRecords value, a pagination token is included in the response so that the remaining results can be retrieved. 
        public let maxResults: Int32?
        /// The date and time specifiying the end of the requested time series data. The value specified is exclusive - data points less than (but not equal to) EndTime will be returned. The value for EndTime must be later than the value for StartTime.
        public let endTime: TimeStamp
        /// The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)    3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
        public let periodInSeconds: Int32?
        /// The date and time specifying the beginning of the requested time series data. You can't specify a StartTime that's earlier than 7 days ago. The value specified is inclusive - data points equal to or greater than StartTime will be returned. The value for StartTime must be earlier than the value for EndTime.
        public let startTime: TimeStamp
        /// The AWS service for which Performance Insights will return metrics. The only valid value for ServiceType is: RDS 
        public let serviceType: ServiceType
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String

        public init(metricQueries: [MetricQuery], maxResults: Int32? = nil, endTime: TimeStamp, periodInSeconds: Int32? = nil, startTime: TimeStamp, serviceType: ServiceType, nextToken: String? = nil, identifier: String) {
            self.metricQueries = metricQueries
            self.maxResults = maxResults
            self.endTime = endTime
            self.periodInSeconds = periodInSeconds
            self.startTime = startTime
            self.serviceType = serviceType
            self.nextToken = nextToken
            self.identifier = identifier
        }

        private enum CodingKeys: String, CodingKey {
            case metricQueries = "MetricQueries"
            case maxResults = "MaxResults"
            case endTime = "EndTime"
            case periodInSeconds = "PeriodInSeconds"
            case startTime = "StartTime"
            case serviceType = "ServiceType"
            case nextToken = "NextToken"
            case identifier = "Identifier"
        }
    }

    public struct DataPoint: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Timestamp", required: true, type: .timestamp), 
            AWSShapeMember(label: "Value", required: true, type: .double)
        ]
        /// The time, in epoch format, associated with a particular Value.
        public let timestamp: TimeStamp
        /// The actual value associated with a particular Timestamp.
        public let value: Double

        public init(timestamp: TimeStamp, value: Double) {
            self.timestamp = timestamp
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }

    public enum ServiceType: String, CustomStringConvertible, Codable {
        case rds = "RDS"
        public var description: String { return self.rawValue }
    }

    public struct ResponsePartitionKey: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: true, type: .map)
        ]
        /// A dimension map that contains the dimension(s) for this partition.
        public let dimensions: [String: String]

        public init(dimensions: [String: String]) {
            self.dimensions = dimensions
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
        }
    }

}