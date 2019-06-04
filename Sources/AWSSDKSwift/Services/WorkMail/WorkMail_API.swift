// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored. The WorkMail API is designed for the following scenarios:   Listing and describing organizations     Managing users     Managing groups     Managing resources   All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkMail {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "WorkMailService",
            service: "workmail",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [WorkMailErrorType.self]
        )
    }

    ///  Adds a member (user or group) to the resource's set of delegates.
    public func associateDelegateToResource(_ input: AssociateDelegateToResourceRequest) throws -> Future<AssociateDelegateToResourceResponse> {
        return try client.send(operation: "AssociateDelegateToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a member (user or group) to the group's set.
    public func associateMemberToGroup(_ input: AssociateMemberToGroupRequest) throws -> Future<AssociateMemberToGroupResponse> {
        return try client.send(operation: "AssociateMemberToGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
    public func createAlias(_ input: CreateAliasRequest) throws -> Future<CreateAliasResponse> {
        return try client.send(operation: "CreateAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createGroup(_ input: CreateGroupRequest) throws -> Future<CreateGroupResponse> {
        return try client.send(operation: "CreateGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Amazon WorkMail resource. 
    public func createResource(_ input: CreateResourceRequest) throws -> Future<CreateResourceResponse> {
        return try client.send(operation: "CreateResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createUser(_ input: CreateUserRequest) throws -> Future<CreateUserResponse> {
        return try client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove one or more specified aliases from a set of aliases for a given user.
    public func deleteAlias(_ input: DeleteAliasRequest) throws -> Future<DeleteAliasResponse> {
        return try client.send(operation: "DeleteAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a group from Amazon WorkMail.
    public func deleteGroup(_ input: DeleteGroupRequest) throws -> Future<DeleteGroupResponse> {
        return try client.send(operation: "DeleteGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes permissions granted to a member (user or group).
    public func deleteMailboxPermissions(_ input: DeleteMailboxPermissionsRequest) throws -> Future<DeleteMailboxPermissionsResponse> {
        return try client.send(operation: "DeleteMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified resource. 
    public func deleteResource(_ input: DeleteResourceRequest) throws -> Future<DeleteResourceResponse> {
        return try client.send(operation: "DeleteResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    public func deleteUser(_ input: DeleteUserRequest) throws -> Future<DeleteUserResponse> {
        return try client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    public func deregisterFromWorkMail(_ input: DeregisterFromWorkMailRequest) throws -> Future<DeregisterFromWorkMailResponse> {
        return try client.send(operation: "DeregisterFromWorkMail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data available for the group.
    public func describeGroup(_ input: DescribeGroupRequest) throws -> Future<DescribeGroupResponse> {
        return try client.send(operation: "DescribeGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides more information regarding a given organization based on its identifier.
    public func describeOrganization(_ input: DescribeOrganizationRequest) throws -> Future<DescribeOrganizationResponse> {
        return try client.send(operation: "DescribeOrganization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data available for the resource.
    public func describeResource(_ input: DescribeResourceRequest) throws -> Future<DescribeResourceResponse> {
        return try client.send(operation: "DescribeResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information regarding the user.
    public func describeUser(_ input: DescribeUserRequest) throws -> Future<DescribeUserResponse> {
        return try client.send(operation: "DescribeUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a member from the resource's set of delegates.
    public func disassociateDelegateFromResource(_ input: DisassociateDelegateFromResourceRequest) throws -> Future<DisassociateDelegateFromResourceResponse> {
        return try client.send(operation: "DisassociateDelegateFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a member from a group.
    public func disassociateMemberFromGroup(_ input: DisassociateMemberFromGroupRequest) throws -> Future<DisassociateMemberFromGroupResponse> {
        return try client.send(operation: "DisassociateMemberFromGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests a user's mailbox details for a specified organization and user.
    public func getMailboxDetails(_ input: GetMailboxDetailsRequest) throws -> Future<GetMailboxDetailsResponse> {
        return try client.send(operation: "GetMailboxDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a paginated call to list the aliases associated with a given entity.
    public func listAliases(_ input: ListAliasesRequest) throws -> Future<ListAliasesResponse> {
        return try client.send(operation: "ListAliases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembers(_ input: ListGroupMembersRequest) throws -> Future<ListGroupMembersResponse> {
        return try client.send(operation: "ListGroupMembers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's groups.
    public func listGroups(_ input: ListGroupsRequest) throws -> Future<ListGroupsResponse> {
        return try client.send(operation: "ListGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissions(_ input: ListMailboxPermissionsRequest) throws -> Future<ListMailboxPermissionsResponse> {
        return try client.send(operation: "ListMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the customer's non-deleted organizations.
    public func listOrganizations(_ input: ListOrganizationsRequest) throws -> Future<ListOrganizationsResponse> {
        return try client.send(operation: "ListOrganizations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegates(_ input: ListResourceDelegatesRequest) throws -> Future<ListResourceDelegatesResponse> {
        return try client.send(operation: "ListResourceDelegates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's resources.
    public func listResources(_ input: ListResourcesRequest) throws -> Future<ListResourcesResponse> {
        return try client.send(operation: "ListResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's users.
    public func listUsers(_ input: ListUsersRequest) throws -> Future<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    public func putMailboxPermissions(_ input: PutMailboxPermissionsRequest) throws -> Future<PutMailboxPermissionsResponse> {
        return try client.send(operation: "PutMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.
    public func registerToWorkMail(_ input: RegisterToWorkMailRequest) throws -> Future<RegisterToWorkMailResponse> {
        return try client.send(operation: "RegisterToWorkMail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows the administrator to reset the password for a user.
    public func resetPassword(_ input: ResetPasswordRequest) throws -> Future<ResetPasswordResponse> {
        return try client.send(operation: "ResetPassword", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a user's current mailbox quota for a specified organization and user.
    public func updateMailboxQuota(_ input: UpdateMailboxQuotaRequest) throws -> Future<UpdateMailboxQuotaResponse> {
        return try client.send(operation: "UpdateMailboxQuota", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    public func updatePrimaryEmailAddress(_ input: UpdatePrimaryEmailAddressRequest) throws -> Future<UpdatePrimaryEmailAddressResponse> {
        return try client.send(operation: "UpdatePrimaryEmailAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.
    public func updateResource(_ input: UpdateResourceRequest) throws -> Future<UpdateResourceResponse> {
        return try client.send(operation: "UpdateResource", path: "/", httpMethod: "POST", input: input)
    }


}