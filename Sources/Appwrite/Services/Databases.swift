import AsyncHTTPClient
import Foundation
import NIO
import AppwriteModels

open class Databases: Service {
    ///
    /// List Databases
    ///
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    open func list(
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil
    ) async throws -> AppwriteModels.CollectionList {
        let path: String = "/databases"
        let params: [String: Any?] = [
            "search": search,
            "limit": limit,
            "offset": offset,
            "cursor": cursor,
            "cursorDirection": cursorDirection,
            "orderType": orderType
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.CollectionList = { dict in
            return AppwriteModels.CollectionList.from(map: dict)
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
    /// Create Database
    ///
    /// @param String databaseId
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    open func create(
        databaseId: String,
        name: String
    ) async throws -> AppwriteModels.Database {
        let path: String = "/databases"
        let params: [String: Any?] = [
            "databaseId": databaseId,
            "name": name
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Database = { dict in
            return AppwriteModels.Database.from(map: dict)
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
    /// Get Database
    ///
    /// @param String databaseId
    /// @throws Exception
    /// @return array
    ///
    open func get(
        databaseId: String
    ) async throws -> AppwriteModels.Collection {
        var path: String = "/databases/{databaseId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Collection = { dict in
            return AppwriteModels.Collection.from(map: dict)
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
    /// Update Database
    ///
    /// @param String databaseId
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    open func update(
        databaseId: String,
        name: String
    ) async throws -> AppwriteModels.Collection {
        var path: String = "/databases/{databaseId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        let params: [String: Any?] = [
            "name": name
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Collection = { dict in
            return AppwriteModels.Collection.from(map: dict)
        }
        return try await client.call(
            method: "PUT",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }

    ///
    /// Delete Database
    ///
    /// @param String databaseId
    /// @throws Exception
    /// @return array
    ///
    open func delete(
        databaseId: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params        )
    }

    ///
    /// List Collections
    ///
    /// @param String databaseId
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    open func listCollections(
        databaseId: String,
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil
    ) async throws -> AppwriteModels.CollectionList {
        var path: String = "/databases/{databaseId}/collections"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        let params: [String: Any?] = [
            "search": search,
            "limit": limit,
            "offset": offset,
            "cursor": cursor,
            "cursorDirection": cursorDirection,
            "orderType": orderType
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.CollectionList = { dict in
            return AppwriteModels.CollectionList.from(map: dict)
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
    /// Create Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String name
    /// @param String permission
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    open func createCollection(
        databaseId: String,
        collectionId: String,
        name: String,
        permission: String,
        read: [Any],
        write: [Any]
    ) async throws -> AppwriteModels.Collection {
        var path: String = "/databases/{databaseId}/collections"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        let params: [String: Any?] = [
            "collectionId": collectionId,
            "name": name,
            "permission": permission,
            "read": read,
            "write": write
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Collection = { dict in
            return AppwriteModels.Collection.from(map: dict)
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
    /// Get Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    open func getCollection(
        databaseId: String,
        collectionId: String
    ) async throws -> AppwriteModels.Collection {
        var path: String = "/databases/{databaseId}/collections/{collectionId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Collection = { dict in
            return AppwriteModels.Collection.from(map: dict)
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
    /// Update Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String name
    /// @param String permission
    /// @param [Any] read
    /// @param [Any] write
    /// @param Bool enabled
    /// @throws Exception
    /// @return array
    ///
    open func updateCollection(
        databaseId: String,
        collectionId: String,
        name: String,
        permission: String,
        read: [Any]? = nil,
        write: [Any]? = nil,
        enabled: Bool? = nil
    ) async throws -> AppwriteModels.Collection {
        var path: String = "/databases/{databaseId}/collections/{collectionId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "name": name,
            "permission": permission,
            "read": read,
            "write": write,
            "enabled": enabled
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Collection = { dict in
            return AppwriteModels.Collection.from(map: dict)
        }
        return try await client.call(
            method: "PUT",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }

    ///
    /// Delete Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    open func deleteCollection(
        databaseId: String,
        collectionId: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}/collections/{collectionId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params        )
    }

    ///
    /// List Attributes
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    open func listAttributes(
        databaseId: String,
        collectionId: String
    ) async throws -> AppwriteModels.AttributeList {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeList = { dict in
            return AppwriteModels.AttributeList.from(map: dict)
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
    /// Create Boolean Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Bool default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createBooleanAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: Bool? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeBoolean {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/boolean"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeBoolean = { dict in
            return AppwriteModels.AttributeBoolean.from(map: dict)
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
    /// Create Email Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createEmailAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeEmail {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/email"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeEmail = { dict in
            return AppwriteModels.AttributeEmail.from(map: dict)
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
    /// Create Enum Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param [Any] elements
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createEnumAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        elements: [Any],
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeEnum {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/enum"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "elements": elements,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeEnum = { dict in
            return AppwriteModels.AttributeEnum.from(map: dict)
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
    /// Create Float Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Double min
    /// @param Double max
    /// @param Double default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createFloatAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        min: Double? = nil,
        max: Double? = nil,
        xdefault: Double? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeFloat {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/float"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "min": min,
            "max": max,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeFloat = { dict in
            return AppwriteModels.AttributeFloat.from(map: dict)
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
    /// Create Integer Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Int min
    /// @param Int max
    /// @param Int default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createIntegerAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        min: Int? = nil,
        max: Int? = nil,
        xdefault: Int? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeInteger {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/integer"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "min": min,
            "max": max,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeInteger = { dict in
            return AppwriteModels.AttributeInteger.from(map: dict)
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
    /// Create IP Address Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createIpAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeIp {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/ip"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeIp = { dict in
            return AppwriteModels.AttributeIp.from(map: dict)
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
    /// Create String Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Int size
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createStringAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        size: Int,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeString {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/string"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "size": size,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeString = { dict in
            return AppwriteModels.AttributeString.from(map: dict)
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
    /// Create URL Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    open func createUrlAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil
    ) async throws -> AppwriteModels.AttributeUrl {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/url"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "required": xrequired,
            "default": xdefault,
            "array": array
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.AttributeUrl = { dict in
            return AppwriteModels.AttributeUrl.from(map: dict)
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
    /// Get Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    open func getAttribute(
        databaseId: String,
        collectionId: String,
        key: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/{key}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{key}",
          with: key
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params        )
    }

    ///
    /// Delete Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    open func deleteAttribute(
        databaseId: String,
        collectionId: String,
        key: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/attributes/{key}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{key}",
          with: key
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params        )
    }

    ///
    /// List Documents
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param [Any] queries
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param [Any] orderAttributes
    /// @param [Any] orderTypes
    /// @throws Exception
    /// @return array
    ///
    open func listDocuments(
        databaseId: String,
        collectionId: String,
        queries: [Any]? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderAttributes: [Any]? = nil,
        orderTypes: [Any]? = nil
    ) async throws -> AppwriteModels.DocumentList {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/documents"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "queries": queries,
            "limit": limit,
            "offset": offset,
            "cursor": cursor,
            "cursorDirection": cursorDirection,
            "orderAttributes": orderAttributes,
            "orderTypes": orderTypes
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.DocumentList = { dict in
            return AppwriteModels.DocumentList.from(map: dict)
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
    /// Create Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @param Any data
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    open func createDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        data: Any,
        read: [Any]? = nil,
        write: [Any]? = nil
    ) async throws -> AppwriteModels.Document {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/documents"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "documentId": documentId,
            "data": data,
            "read": read,
            "write": write
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Document = { dict in
            return AppwriteModels.Document.from(map: dict)
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
    /// Get Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @throws Exception
    /// @return array
    ///
    open func getDocument(
        databaseId: String,
        collectionId: String,
        documentId: String
    ) async throws -> AppwriteModels.Document {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/documents/{documentId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{documentId}",
          with: documentId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Document = { dict in
            return AppwriteModels.Document.from(map: dict)
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
    /// Update Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @param Any data
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    open func updateDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        data: Any,
        read: [Any]? = nil,
        write: [Any]? = nil
    ) async throws -> AppwriteModels.Document {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/documents/{documentId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{documentId}",
          with: documentId
        )
        let params: [String: Any?] = [
            "data": data,
            "read": read,
            "write": write
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Document = { dict in
            return AppwriteModels.Document.from(map: dict)
        }
        return try await client.call(
            method: "PATCH",
            path: path,
            headers: headers,
            params: params,
            converter: converter
        )
    }

    ///
    /// Delete Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @throws Exception
    /// @return array
    ///
    open func deleteDocument(
        databaseId: String,
        collectionId: String,
        documentId: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/documents/{documentId}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{documentId}",
          with: documentId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params        )
    }

    ///
    /// List Indexes
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    open func listIndexes(
        databaseId: String,
        collectionId: String
    ) async throws -> AppwriteModels.IndexList {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/indexes"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.IndexList = { dict in
            return AppwriteModels.IndexList.from(map: dict)
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
    /// Create Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param String type
    /// @param [Any] attributes
    /// @param [Any] orders
    /// @throws Exception
    /// @return array
    ///
    open func createIndex(
        databaseId: String,
        collectionId: String,
        key: String,
        type: String,
        attributes: [Any],
        orders: [Any]? = nil
    ) async throws -> AppwriteModels.Index {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/indexes"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        let params: [String: Any?] = [
            "key": key,
            "type": type,
            "attributes": attributes,
            "orders": orders
        ]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Index = { dict in
            return AppwriteModels.Index.from(map: dict)
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
    /// Get Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    open func getIndex(
        databaseId: String,
        collectionId: String,
        key: String
    ) async throws -> AppwriteModels.Index {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/indexes/{key}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{key}",
          with: key
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Index = { dict in
            return AppwriteModels.Index.from(map: dict)
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
    /// Delete Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    open func deleteIndex(
        databaseId: String,
        collectionId: String,
        key: String
    ) async throws -> Any {
        var path: String = "/databases/{databaseId}/collections/{collectionId}/indexes/{key}"
        path = path.replacingOccurrences(
          of: "{databaseId}",
          with: databaseId
        )
        path = path.replacingOccurrences(
          of: "{collectionId}",
          with: collectionId
        )
        path = path.replacingOccurrences(
          of: "{key}",
          with: key
        )
        let params: [String: Any?] = [:]
        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        return try await client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params        )
    }


    ///
    /// List Databases
    ///
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func list(
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil,
        completion: ((Result<AppwriteModels.CollectionList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await list(
                    search: search,
                    limit: limit,
                    offset: offset,
                    cursor: cursor,
                    cursorDirection: cursorDirection,
                    orderType: orderType
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Database
    ///
    /// @param String databaseId
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func create(
        databaseId: String,
        name: String,
        completion: ((Result<AppwriteModels.Database, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await create(
                    databaseId: databaseId,
                    name: name
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Database
    ///
    /// @param String databaseId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func get(
        databaseId: String,
        completion: ((Result<AppwriteModels.Collection, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await get(
                    databaseId: databaseId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Update Database
    ///
    /// @param String databaseId
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func update(
        databaseId: String,
        name: String,
        completion: ((Result<AppwriteModels.Collection, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await update(
                    databaseId: databaseId,
                    name: name
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Database
    ///
    /// @param String databaseId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func delete(
        databaseId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await delete(
                    databaseId: databaseId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// List Collections
    ///
    /// @param String databaseId
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listCollections(
        databaseId: String,
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil,
        completion: ((Result<AppwriteModels.CollectionList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listCollections(
                    databaseId: databaseId,
                    search: search,
                    limit: limit,
                    offset: offset,
                    cursor: cursor,
                    cursorDirection: cursorDirection,
                    orderType: orderType
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String name
    /// @param String permission
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createCollection(
        databaseId: String,
        collectionId: String,
        name: String,
        permission: String,
        read: [Any],
        write: [Any],
        completion: ((Result<AppwriteModels.Collection, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createCollection(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    name: name,
                    permission: permission,
                    read: read,
                    write: write
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getCollection(
        databaseId: String,
        collectionId: String,
        completion: ((Result<AppwriteModels.Collection, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getCollection(
                    databaseId: databaseId,
                    collectionId: collectionId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Update Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String name
    /// @param String permission
    /// @param [Any] read
    /// @param [Any] write
    /// @param Bool enabled
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func updateCollection(
        databaseId: String,
        collectionId: String,
        name: String,
        permission: String,
        read: [Any]? = nil,
        write: [Any]? = nil,
        enabled: Bool? = nil,
        completion: ((Result<AppwriteModels.Collection, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await updateCollection(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    name: name,
                    permission: permission,
                    read: read,
                    write: write,
                    enabled: enabled
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Collection
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteCollection(
        databaseId: String,
        collectionId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteCollection(
                    databaseId: databaseId,
                    collectionId: collectionId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// List Attributes
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listAttributes(
        databaseId: String,
        collectionId: String,
        completion: ((Result<AppwriteModels.AttributeList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listAttributes(
                    databaseId: databaseId,
                    collectionId: collectionId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Boolean Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Bool default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createBooleanAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: Bool? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeBoolean, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createBooleanAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Email Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createEmailAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeEmail, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createEmailAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Enum Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param [Any] elements
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createEnumAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        elements: [Any],
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeEnum, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createEnumAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    elements: elements,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Float Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Double min
    /// @param Double max
    /// @param Double default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createFloatAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        min: Double? = nil,
        max: Double? = nil,
        xdefault: Double? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeFloat, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createFloatAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    min: min,
                    max: max,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Integer Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param Int min
    /// @param Int max
    /// @param Int default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createIntegerAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        min: Int? = nil,
        max: Int? = nil,
        xdefault: Int? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeInteger, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createIntegerAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    min: min,
                    max: max,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create IP Address Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createIpAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeIp, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createIpAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create String Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Int size
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createStringAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        size: Int,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeString, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createStringAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    size: size,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create URL Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param Bool required
    /// @param String default
    /// @param Bool array
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createUrlAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        xrequired: Bool,
        xdefault: String? = nil,
        array: Bool? = nil,
        completion: ((Result<AppwriteModels.AttributeUrl, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createUrlAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    xrequired: xrequired,
                    xdefault: xdefault,
                    array: array
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Attribute
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteAttribute(
        databaseId: String,
        collectionId: String,
        key: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteAttribute(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// List Documents
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param [Any] queries
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param [Any] orderAttributes
    /// @param [Any] orderTypes
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listDocuments(
        databaseId: String,
        collectionId: String,
        queries: [Any]? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderAttributes: [Any]? = nil,
        orderTypes: [Any]? = nil,
        completion: ((Result<AppwriteModels.DocumentList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listDocuments(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    queries: queries,
                    limit: limit,
                    offset: offset,
                    cursor: cursor,
                    cursorDirection: cursorDirection,
                    orderAttributes: orderAttributes,
                    orderTypes: orderTypes
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @param Any data
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        data: Any,
        read: [Any]? = nil,
        write: [Any]? = nil,
        completion: ((Result<AppwriteModels.Document, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createDocument(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    documentId: documentId,
                    data: data,
                    read: read,
                    write: write
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        completion: ((Result<AppwriteModels.Document, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getDocument(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    documentId: documentId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Update Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @param Any data
    /// @param [Any] read
    /// @param [Any] write
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func updateDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        data: Any,
        read: [Any]? = nil,
        write: [Any]? = nil,
        completion: ((Result<AppwriteModels.Document, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await updateDocument(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    documentId: documentId,
                    data: data,
                    read: read,
                    write: write
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Document
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String documentId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteDocument(
        databaseId: String,
        collectionId: String,
        documentId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteDocument(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    documentId: documentId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// List Indexes
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listIndexes(
        databaseId: String,
        collectionId: String,
        completion: ((Result<AppwriteModels.IndexList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listIndexes(
                    databaseId: databaseId,
                    collectionId: collectionId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @param String type
    /// @param [Any] attributes
    /// @param [Any] orders
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createIndex(
        databaseId: String,
        collectionId: String,
        key: String,
        type: String,
        attributes: [Any],
        orders: [Any]? = nil,
        completion: ((Result<AppwriteModels.Index, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createIndex(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key,
                    type: type,
                    attributes: attributes,
                    orders: orders
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getIndex(
        databaseId: String,
        collectionId: String,
        key: String,
        completion: ((Result<AppwriteModels.Index, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getIndex(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Index
    ///
    /// @param String databaseId
    /// @param String collectionId
    /// @param String key
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteIndex(
        databaseId: String,
        collectionId: String,
        key: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteIndex(
                    databaseId: databaseId,
                    collectionId: collectionId,
                    key: key
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

}
