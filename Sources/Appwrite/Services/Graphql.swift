import AsyncHTTPClient
import Foundation
import NIO
import AppwriteModels

/// The GraphQL API allows you to query and mutate your Appwrite server using GraphQL.
open class Graphql: Service {

    ///
    /// GraphQL Endpoint
    ///
    /// Execute a GraphQL query.
    ///
    /// @param String query
    /// @param String operationName
    /// @param String variables
    /// @throws Exception
    /// @return array
    ///
    open func 63a0228ea55af(
        query: String,
        operationName: String? = nil,
        variables: String? = nil
    ) async throws -> Any {
        let path: String = "/graphql"

        let params: [String: Any?] = [
            "query": query,
            "operationName": operationName,
            "variables": variables
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let converter: (Any) -> Any = { response in
            return response
        }

        return try await client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }

    ///
    /// GraphQL Endpoint
    ///
    /// Execute a GraphQL mutation.
    ///
    /// @param Any query
    /// @throws Exception
    /// @return array
    ///
    open func query(
        query: T
    ) async throws -> Any {
        let path: String = "/graphql"

        let params: [String: Any?] = [
            "query": query
        ]

        let headers: [String: String] = [
            "x-sdk-graphql": "true",
            "content-type": "application/json"
        ]

        let converter: (Any) -> Any = { response in
            return response
        }

        return try await client.call(
            method: "POST",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }

    ///
    /// GraphQL Endpoint
    ///
    /// Execute a GraphQL mutation.
    ///
    /// @param Any query
    /// @throws Exception
    /// @return array
    ///
    open func mutation(
        query: T
    ) async throws -> Any {
        let path: String = "/graphql/mutation"

        let params: [String: Any?] = [
            "query": query
        ]

        let headers: [String: String] = [
            "x-sdk-graphql": "true",
            "content-type": "application/json"
        ]

        let converter: (Any) -> Any = { response in
            return response
        }

        return try await client.call(
            method: "POST",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }


}