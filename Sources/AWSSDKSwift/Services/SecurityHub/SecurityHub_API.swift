// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Security Hub provides you with a comprehensive view of your security state in AWS and your compliance with the security industry standards and best practices. Security Hub collects security data from across AWS accounts, services, and supported third-party partners and helps you analyze your security trends and identify the highest priority security issues. For more information, see AWS Security Hub User Guide.   Important: AWS Security Hub is currently in Preview release. 
*/
public struct SecurityHub {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "securityhub",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SecurityHubErrorType.self]
        )
    }

    ///  Accepts the invitation to be monitored by a Security Hub master account.
    public func acceptInvitation(_ input: AcceptInvitationRequest) throws -> Future<AcceptInvitationResponse> {
        return try client.send(operation: "AcceptInvitation", path: "/master", httpMethod: "POST", input: input)
    }

    ///  Disables the standards specified by the standards subscription ARNs. In the context of Security Hub, supported standards (for example, CIS AWS Foundations) are automated and continuous checks that help determine your compliance status against security industry (including AWS) best practices.
    public func batchDisableStandards(_ input: BatchDisableStandardsRequest) throws -> Future<BatchDisableStandardsResponse> {
        return try client.send(operation: "BatchDisableStandards", path: "/standards/deregister", httpMethod: "POST", input: input)
    }

    ///  Enables the standards specified by the standards ARNs. In the context of Security Hub, supported standards (for example, CIS AWS Foundations) are automated and continuous checks that help determine your compliance status against security industry (including AWS) best practices. 
    public func batchEnableStandards(_ input: BatchEnableStandardsRequest) throws -> Future<BatchEnableStandardsResponse> {
        return try client.send(operation: "BatchEnableStandards", path: "/standards/register", httpMethod: "POST", input: input)
    }

    ///  Imports security findings generated from an integrated third-party product into Security Hub.
    public func batchImportFindings(_ input: BatchImportFindingsRequest) throws -> Future<BatchImportFindingsResponse> {
        return try client.send(operation: "BatchImportFindings", path: "/findings/import", httpMethod: "POST", input: input)
    }

    ///  Creates an insight, which is a consolidation of findings that identifies a security area that requires attention or intervention.
    public func createInsight(_ input: CreateInsightRequest) throws -> Future<CreateInsightResponse> {
        return try client.send(operation: "CreateInsight", path: "/insights", httpMethod: "POST", input: input)
    }

    ///  Creates Security Hub member accounts associated with the account used for this action, which becomes the Security Hub Master account. Security Hub must be enabled in the account used to make this request.
    public func createMembers(_ input: CreateMembersRequest) throws -> Future<CreateMembersResponse> {
        return try client.send(operation: "CreateMembers", path: "/members", httpMethod: "POST", input: input)
    }

    ///  Declines invitations that are sent to this AWS account (invitee) from the AWS accounts (inviters) that are specified by the provided AccountIds.
    public func declineInvitations(_ input: DeclineInvitationsRequest) throws -> Future<DeclineInvitationsResponse> {
        return try client.send(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: "POST", input: input)
    }

    ///  Deletes the insight specified by the InsightArn.
    public func deleteInsight(_ input: DeleteInsightRequest) throws -> Future<DeleteInsightResponse> {
        return try client.send(operation: "DeleteInsight", path: "/insights/{InsightArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes invitations that were sent to theis AWS account (invitee) by the AWS accounts (inviters) that are specified by their account IDs. 
    public func deleteInvitations(_ input: DeleteInvitationsRequest) throws -> Future<DeleteInvitationsResponse> {
        return try client.send(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes the Security Hub member accounts that the account IDs specify.
    public func deleteMembers(_ input: DeleteMembersRequest) throws -> Future<DeleteMembersResponse> {
        return try client.send(operation: "DeleteMembers", path: "/members/delete", httpMethod: "POST", input: input)
    }

    ///  Returns information about the products available that you can subscribe to.
    public func describeProducts(_ input: DescribeProductsRequest) throws -> Future<DescribeProductsResponse> {
        return try client.send(operation: "DescribeProducts", path: "/products", httpMethod: "GET", input: input)
    }

    ///  Cancels the subscription that allows a findings-generating solution (product) to import its findings into Security Hub.
    public func disableImportFindingsForProduct(_ input: DisableImportFindingsForProductRequest) throws -> Future<DisableImportFindingsForProductResponse> {
        return try client.send(operation: "DisableImportFindingsForProduct", path: "/productSubscriptions/{ProductSubscriptionArn+}", httpMethod: "DELETE", input: input)
    }

    ///  Disables the Security Hub service.
    public func disableSecurityHub(_ input: DisableSecurityHubRequest) throws -> Future<DisableSecurityHubResponse> {
        return try client.send(operation: "DisableSecurityHub", path: "/accounts", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the current Security Hub member account from its master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest) throws -> Future<DisassociateFromMasterAccountResponse> {
        return try client.send(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: "POST", input: input)
    }

    ///  Disassociates the Security Hub member accounts that are specified by the account IDs from their master account. 
    public func disassociateMembers(_ input: DisassociateMembersRequest) throws -> Future<DisassociateMembersResponse> {
        return try client.send(operation: "DisassociateMembers", path: "/members/disassociate", httpMethod: "POST", input: input)
    }

    ///  Sets up the subscription that enables a findings-generating solution (product) to import its findings into Security Hub.
    public func enableImportFindingsForProduct(_ input: EnableImportFindingsForProductRequest) throws -> Future<EnableImportFindingsForProductResponse> {
        return try client.send(operation: "EnableImportFindingsForProduct", path: "/productSubscriptions", httpMethod: "POST", input: input)
    }

    ///  Enables the Security Hub service.
    public func enableSecurityHub(_ input: EnableSecurityHubRequest) throws -> Future<EnableSecurityHubResponse> {
        return try client.send(operation: "EnableSecurityHub", path: "/accounts", httpMethod: "POST", input: input)
    }

    ///  Lists and describes enabled standards.
    public func getEnabledStandards(_ input: GetEnabledStandardsRequest) throws -> Future<GetEnabledStandardsResponse> {
        return try client.send(operation: "GetEnabledStandards", path: "/standards/get", httpMethod: "POST", input: input)
    }

    ///  Lists and describes Security Hub-aggregated findings that filter attributes specify.
    public func getFindings(_ input: GetFindingsRequest) throws -> Future<GetFindingsResponse> {
        return try client.send(operation: "GetFindings", path: "/findings", httpMethod: "POST", input: input)
    }

    ///  Lists the results of the Security Hub insight that the insight ARN specifies.
    public func getInsightResults(_ input: GetInsightResultsRequest) throws -> Future<GetInsightResultsResponse> {
        return try client.send(operation: "GetInsightResults", path: "/insights/results/{InsightArn+}", httpMethod: "GET", input: input)
    }

    ///  Lists and describes insights that insight ARNs specify.
    public func getInsights(_ input: GetInsightsRequest) throws -> Future<GetInsightsResponse> {
        return try client.send(operation: "GetInsights", path: "/insights/get", httpMethod: "POST", input: input)
    }

    ///  Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
    public func getInvitationsCount(_ input: GetInvitationsCountRequest) throws -> Future<GetInvitationsCountResponse> {
        return try client.send(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: "GET", input: input)
    }

    ///  Provides the details for the Security Hub master account to the current member account. 
    public func getMasterAccount(_ input: GetMasterAccountRequest) throws -> Future<GetMasterAccountResponse> {
        return try client.send(operation: "GetMasterAccount", path: "/master", httpMethod: "GET", input: input)
    }

    ///  Returns the details on the Security Hub member accounts that the account IDs specify.
    public func getMembers(_ input: GetMembersRequest) throws -> Future<GetMembersResponse> {
        return try client.send(operation: "GetMembers", path: "/members/get", httpMethod: "POST", input: input)
    }

    ///  Invites other AWS accounts to enable Security Hub and become Security Hub member accounts. When an account accepts the invitation and becomes a member account, the master account can view Security Hub findings of the member account. 
    public func inviteMembers(_ input: InviteMembersRequest) throws -> Future<InviteMembersResponse> {
        return try client.send(operation: "InviteMembers", path: "/members/invite", httpMethod: "POST", input: input)
    }

    ///  Lists all findings-generating solutions (products) whose findings you have subscribed to receive in Security Hub.
    public func listEnabledProductsForImport(_ input: ListEnabledProductsForImportRequest) throws -> Future<ListEnabledProductsForImportResponse> {
        return try client.send(operation: "ListEnabledProductsForImport", path: "/productSubscriptions", httpMethod: "GET", input: input)
    }

    ///  Lists all Security Hub membership invitations that were sent to the current AWS account. 
    public func listInvitations(_ input: ListInvitationsRequest) throws -> Future<ListInvitationsResponse> {
        return try client.send(operation: "ListInvitations", path: "/invitations", httpMethod: "GET", input: input)
    }

    ///  Lists details about all member accounts for the current Security Hub master account.
    public func listMembers(_ input: ListMembersRequest) throws -> Future<ListMembersResponse> {
        return try client.send(operation: "ListMembers", path: "/members", httpMethod: "GET", input: input)
    }

    ///  Returns a list of account IDs that are subscribed to the product.
    public func listProductSubscribers(_ input: ListProductSubscribersRequest) throws -> Future<ListProductSubscribersResponse> {
        return try client.send(operation: "ListProductSubscribers", path: "/productSubscribers/", httpMethod: "GET", input: input)
    }

    ///  Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
    public func updateFindings(_ input: UpdateFindingsRequest) throws -> Future<UpdateFindingsResponse> {
        return try client.send(operation: "UpdateFindings", path: "/findings", httpMethod: "PATCH", input: input)
    }

    ///  Updates the Security Hub insight that the insight ARN specifies.
    public func updateInsight(_ input: UpdateInsightRequest) throws -> Future<UpdateInsightResponse> {
        return try client.send(operation: "UpdateInsight", path: "/insights/{InsightArn+}", httpMethod: "PATCH", input: input)
    }


}