import AsyncHTTPClient
import Foundation
import NIO
import AppwriteModels

open class Storage: Service {
    ///
    /// List buckets
    ///
    /// Get a list of all the storage buckets. You can use the query params to
    /// filter your results.
    ///
    /// @param [String] queries
    /// @param String search
    /// @throws Exception
    /// @return array
    ///
    open func listBuckets(
        queries: [String]? = nil,
        search: String? = nil
    ) async throws -> AppwriteModels.BucketList {
        let path: String = "/storage/buckets"
        let params: [String: Any?] = [
            "queries": queries,
            "search": search
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.BucketList = { dict in
            return AppwriteModels.BucketList.from(map: dict)
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
    /// Create bucket
    ///
    /// Create a new storage bucket.
    ///
    /// @param String bucketId
    /// @param String name
    /// @param [String] permissions
    /// @param Bool fileSecurity
    /// @param Bool enabled
    /// @param Int maximumFileSize
    /// @param [String] allowedFileExtensions
    /// @param String compression
    /// @param Bool encryption
    /// @param Bool antivirus
    /// @throws Exception
    /// @return array
    ///
    open func createBucket(
        bucketId: String,
        name: String,
        permissions: [String]? = nil,
        fileSecurity: Bool? = nil,
        enabled: Bool? = nil,
        maximumFileSize: Int? = nil,
        allowedFileExtensions: [String]? = nil,
        compression: String? = nil,
        encryption: Bool? = nil,
        antivirus: Bool? = nil
    ) async throws -> AppwriteModels.Bucket {
        let path: String = "/storage/buckets"
        let params: [String: Any?] = [
            "bucketId": bucketId,
            "name": name,
            "permissions": permissions,
            "fileSecurity": fileSecurity,
            "enabled": enabled,
            "maximumFileSize": maximumFileSize,
            "allowedFileExtensions": allowedFileExtensions,
            "compression": compression,
            "encryption": encryption,
            "antivirus": antivirus
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Bucket = { dict in
            return AppwriteModels.Bucket.from(map: dict)
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
    /// Get Bucket
    ///
    /// Get a storage bucket by its unique ID. This endpoint response returns a
    /// JSON object with the storage bucket metadata.
    ///
    /// @param String bucketId
    /// @throws Exception
    /// @return array
    ///
    open func getBucket(
        bucketId: String
    ) async throws -> AppwriteModels.Bucket {
        var path: String = "/storage/buckets/{bucketId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Bucket = { dict in
            return AppwriteModels.Bucket.from(map: dict)
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
    /// Update Bucket
    ///
    /// Update a storage bucket by its unique ID.
    ///
    /// @param String bucketId
    /// @param String name
    /// @param [String] permissions
    /// @param Bool fileSecurity
    /// @param Bool enabled
    /// @param Int maximumFileSize
    /// @param [String] allowedFileExtensions
    /// @param String compression
    /// @param Bool encryption
    /// @param Bool antivirus
    /// @throws Exception
    /// @return array
    ///
    open func updateBucket(
        bucketId: String,
        name: String,
        permissions: [String]? = nil,
        fileSecurity: Bool? = nil,
        enabled: Bool? = nil,
        maximumFileSize: Int? = nil,
        allowedFileExtensions: [String]? = nil,
        compression: String? = nil,
        encryption: Bool? = nil,
        antivirus: Bool? = nil
    ) async throws -> AppwriteModels.Bucket {
        var path: String = "/storage/buckets/{bucketId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        let params: [String: Any?] = [
            "name": name,
            "permissions": permissions,
            "fileSecurity": fileSecurity,
            "enabled": enabled,
            "maximumFileSize": maximumFileSize,
            "allowedFileExtensions": allowedFileExtensions,
            "compression": compression,
            "encryption": encryption,
            "antivirus": antivirus
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.Bucket = { dict in
            return AppwriteModels.Bucket.from(map: dict)
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
    /// Delete Bucket
    ///
    /// Delete a storage bucket by its unique ID.
    ///
    /// @param String bucketId
    /// @throws Exception
    /// @return array
    ///
    open func deleteBucket(
        bucketId: String
    ) async throws -> Any {
        var path: String = "/storage/buckets/{bucketId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
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
    /// List Files
    ///
    /// Get a list of all the user files. You can use the query params to filter
    /// your results. On admin mode, this endpoint will return a list of all of the
    /// project's files. [Learn more about different API modes](/docs/admin).
    ///
    /// @param String bucketId
    /// @param [String] queries
    /// @param String search
    /// @throws Exception
    /// @return array
    ///
    open func listFiles(
        bucketId: String,
        queries: [String]? = nil,
        search: String? = nil
    ) async throws -> AppwriteModels.FileList {
        var path: String = "/storage/buckets/{bucketId}/files"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        let params: [String: Any?] = [
            "queries": queries,
            "search": search
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.FileList = { dict in
            return AppwriteModels.FileList.from(map: dict)
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
    /// Create File
    ///
    /// Create a new file. Before using this route, you should create a new bucket
    /// resource using either a [server
    /// integration](/docs/server/storage#storageCreateBucket) API or directly from
    /// your Appwrite console.
    /// 
    /// Larger files should be uploaded using multiple requests with the
    /// [content-range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Range)
    /// header to send a partial request with a maximum supported chunk of `5MB`.
    /// The `content-range` header values should always be in bytes.
    /// 
    /// When the first request is sent, the server will return the **File** object,
    /// and the subsequent part request must include the file's **id** in
    /// `x-appwrite-id` header to allow the server to know that the partial upload
    /// is for the existing file and not for a new one.
    /// 
    /// If you're creating a new file using one of the Appwrite SDKs, all the
    /// chunking logic will be managed by the SDK internally.
    /// 
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param InputFile file
    /// @param [String] permissions
    /// @throws Exception
    /// @return array
    ///
    open func createFile(
        bucketId: String,
        fileId: String,
        file: InputFile,
        permissions: [String]? = nil,
        onProgress: ((UploadProgress) -> Void)? = nil
    ) async throws -> AppwriteModels.File {
        var path: String = "/storage/buckets/{bucketId}/files"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        var params: [String: Any?] = [
            "fileId": fileId,
            "file": file,
            "permissions": permissions
        ]

        var headers: [String: String] = [
            "content-type": "multipart/form-data"
        ]
        let converter: ([String: Any]) -> AppwriteModels.File = { dict in
            return AppwriteModels.File.from(map: dict)
        }
        let idParamName: String? = "fileId"
        let paramName = "file"
        return try await client.chunkedUpload(
            path: path,
            headers: &headers,
            params: &params,
            paramName: paramName,
            idParamName: idParamName,
            converter: converter,
            onProgress: onProgress
        )
    }

    ///
    /// Get File
    ///
    /// Get a file by its unique ID. This endpoint response returns a JSON object
    /// with the file metadata.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    open func getFile(
        bucketId: String,
        fileId: String
    ) async throws -> AppwriteModels.File {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.File = { dict in
            return AppwriteModels.File.from(map: dict)
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
    /// Update File
    ///
    /// Update a file by its unique ID. Only users with write permissions have
    /// access to update this resource.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param [String] permissions
    /// @throws Exception
    /// @return array
    ///
    open func updateFile(
        bucketId: String,
        fileId: String,
        permissions: [String]? = nil
    ) async throws -> AppwriteModels.File {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
        let params: [String: Any?] = [
            "permissions": permissions
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]
        let converter: ([String: Any]) -> AppwriteModels.File = { dict in
            return AppwriteModels.File.from(map: dict)
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
    /// Delete File
    ///
    /// Delete a file by its unique ID. Only users with write permissions have
    /// access to delete this resource.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    open func deleteFile(
        bucketId: String,
        fileId: String
    ) async throws -> Any {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
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
    /// Get File for Download
    ///
    /// Get a file content by its unique ID. The endpoint response return with a
    /// 'Content-Disposition: attachment' header that tells the browser to start
    /// downloading the file to user downloads directory.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    open func getFileDownload(
        bucketId: String,
        fileId: String
    ) async throws -> ByteBuffer {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}/download"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
        let params: [String: Any?] = [
            "project": client.config["project"],
            "key": client.config["key"]
        ]

        return try await client.call(
            method: "GET",
            path: path,
            params: params
        )
    }

    ///
    /// Get File Preview
    ///
    /// Get a file preview image. Currently, this method supports preview for image
    /// files (jpg, png, and gif), other supported formats, like pdf, docs, slides,
    /// and spreadsheets, will return the file icon image. You can also pass query
    /// string arguments for cutting and resizing your preview image. Preview is
    /// supported only for image files smaller than 10MB.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param Int width
    /// @param Int height
    /// @param String gravity
    /// @param Int quality
    /// @param Int borderWidth
    /// @param String borderColor
    /// @param Int borderRadius
    /// @param Double opacity
    /// @param Int rotation
    /// @param String background
    /// @param String output
    /// @throws Exception
    /// @return array
    ///
    open func getFilePreview(
        bucketId: String,
        fileId: String,
        width: Int? = nil,
        height: Int? = nil,
        gravity: String? = nil,
        quality: Int? = nil,
        borderWidth: Int? = nil,
        borderColor: String? = nil,
        borderRadius: Int? = nil,
        opacity: Double? = nil,
        rotation: Int? = nil,
        background: String? = nil,
        output: String? = nil
    ) async throws -> ByteBuffer {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}/preview"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
        let params: [String: Any?] = [
            "width": width,
            "height": height,
            "gravity": gravity,
            "quality": quality,
            "borderWidth": borderWidth,
            "borderColor": borderColor,
            "borderRadius": borderRadius,
            "opacity": opacity,
            "rotation": rotation,
            "background": background,
            "output": output,
            "project": client.config["project"],
            "key": client.config["key"]
        ]

        return try await client.call(
            method: "GET",
            path: path,
            params: params
        )
    }

    ///
    /// Get File for View
    ///
    /// Get a file content by its unique ID. This endpoint is similar to the
    /// download method but returns with no  'Content-Disposition: attachment'
    /// header.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    open func getFileView(
        bucketId: String,
        fileId: String
    ) async throws -> ByteBuffer {
        var path: String = "/storage/buckets/{bucketId}/files/{fileId}/view"
        path = path.replacingOccurrences(
          of: "{bucketId}",
          with: bucketId        )
        path = path.replacingOccurrences(
          of: "{fileId}",
          with: fileId        )
        let params: [String: Any?] = [
            "project": client.config["project"],
            "key": client.config["key"]
        ]

        return try await client.call(
            method: "GET",
            path: path,
            params: params
        )
    }


    ///
    /// List buckets
    ///
    /// Get a list of all the storage buckets. You can use the query params to
    /// filter your results.
    ///
    /// @param [String] queries
    /// @param String search
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listBuckets(
        queries: [String]? = nil,
        search: String? = nil,
        completion: ((Result<AppwriteModels.BucketList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listBuckets(
                    queries: queries,
                    search: search
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create bucket
    ///
    /// Create a new storage bucket.
    ///
    /// @param String bucketId
    /// @param String name
    /// @param [String] permissions
    /// @param Bool fileSecurity
    /// @param Bool enabled
    /// @param Int maximumFileSize
    /// @param [String] allowedFileExtensions
    /// @param String compression
    /// @param Bool encryption
    /// @param Bool antivirus
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createBucket(
        bucketId: String,
        name: String,
        permissions: [String]? = nil,
        fileSecurity: Bool? = nil,
        enabled: Bool? = nil,
        maximumFileSize: Int? = nil,
        allowedFileExtensions: [String]? = nil,
        compression: String? = nil,
        encryption: Bool? = nil,
        antivirus: Bool? = nil,
        completion: ((Result<AppwriteModels.Bucket, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createBucket(
                    bucketId: bucketId,
                    name: name,
                    permissions: permissions,
                    fileSecurity: fileSecurity,
                    enabled: enabled,
                    maximumFileSize: maximumFileSize,
                    allowedFileExtensions: allowedFileExtensions,
                    compression: compression,
                    encryption: encryption,
                    antivirus: antivirus
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get Bucket
    ///
    /// Get a storage bucket by its unique ID. This endpoint response returns a
    /// JSON object with the storage bucket metadata.
    ///
    /// @param String bucketId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getBucket(
        bucketId: String,
        completion: ((Result<AppwriteModels.Bucket, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getBucket(
                    bucketId: bucketId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Update Bucket
    ///
    /// Update a storage bucket by its unique ID.
    ///
    /// @param String bucketId
    /// @param String name
    /// @param [String] permissions
    /// @param Bool fileSecurity
    /// @param Bool enabled
    /// @param Int maximumFileSize
    /// @param [String] allowedFileExtensions
    /// @param String compression
    /// @param Bool encryption
    /// @param Bool antivirus
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func updateBucket(
        bucketId: String,
        name: String,
        permissions: [String]? = nil,
        fileSecurity: Bool? = nil,
        enabled: Bool? = nil,
        maximumFileSize: Int? = nil,
        allowedFileExtensions: [String]? = nil,
        compression: String? = nil,
        encryption: Bool? = nil,
        antivirus: Bool? = nil,
        completion: ((Result<AppwriteModels.Bucket, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await updateBucket(
                    bucketId: bucketId,
                    name: name,
                    permissions: permissions,
                    fileSecurity: fileSecurity,
                    enabled: enabled,
                    maximumFileSize: maximumFileSize,
                    allowedFileExtensions: allowedFileExtensions,
                    compression: compression,
                    encryption: encryption,
                    antivirus: antivirus
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete Bucket
    ///
    /// Delete a storage bucket by its unique ID.
    ///
    /// @param String bucketId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteBucket(
        bucketId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteBucket(
                    bucketId: bucketId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// List Files
    ///
    /// Get a list of all the user files. You can use the query params to filter
    /// your results. On admin mode, this endpoint will return a list of all of the
    /// project's files. [Learn more about different API modes](/docs/admin).
    ///
    /// @param String bucketId
    /// @param [String] queries
    /// @param String search
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func listFiles(
        bucketId: String,
        queries: [String]? = nil,
        search: String? = nil,
        completion: ((Result<AppwriteModels.FileList, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await listFiles(
                    bucketId: bucketId,
                    queries: queries,
                    search: search
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Create File
    ///
    /// Create a new file. Before using this route, you should create a new bucket
    /// resource using either a [server
    /// integration](/docs/server/storage#storageCreateBucket) API or directly from
    /// your Appwrite console.
    /// 
    /// Larger files should be uploaded using multiple requests with the
    /// [content-range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Range)
    /// header to send a partial request with a maximum supported chunk of `5MB`.
    /// The `content-range` header values should always be in bytes.
    /// 
    /// When the first request is sent, the server will return the **File** object,
    /// and the subsequent part request must include the file's **id** in
    /// `x-appwrite-id` header to allow the server to know that the partial upload
    /// is for the existing file and not for a new one.
    /// 
    /// If you're creating a new file using one of the Appwrite SDKs, all the
    /// chunking logic will be managed by the SDK internally.
    /// 
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param InputFile file
    /// @param [String] permissions
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func createFile(
        bucketId: String,
        fileId: String,
        file: InputFile,
        permissions: [String]? = nil,
        onProgress: ((UploadProgress) -> Void)? = nil,
        completion: ((Result<AppwriteModels.File, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await createFile(
                    bucketId: bucketId,
                    fileId: fileId,
                    file: file,
                    permissions: permissions,
                    onProgress: onProgress
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get File
    ///
    /// Get a file by its unique ID. This endpoint response returns a JSON object
    /// with the file metadata.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getFile(
        bucketId: String,
        fileId: String,
        completion: ((Result<AppwriteModels.File, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getFile(
                    bucketId: bucketId,
                    fileId: fileId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Update File
    ///
    /// Update a file by its unique ID. Only users with write permissions have
    /// access to update this resource.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param [String] permissions
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func updateFile(
        bucketId: String,
        fileId: String,
        permissions: [String]? = nil,
        completion: ((Result<AppwriteModels.File, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await updateFile(
                    bucketId: bucketId,
                    fileId: fileId,
                    permissions: permissions
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Delete File
    ///
    /// Delete a file by its unique ID. Only users with write permissions have
    /// access to delete this resource.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func deleteFile(
        bucketId: String,
        fileId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await deleteFile(
                    bucketId: bucketId,
                    fileId: fileId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get File for Download
    ///
    /// Get a file content by its unique ID. The endpoint response return with a
    /// 'Content-Disposition: attachment' header that tells the browser to start
    /// downloading the file to user downloads directory.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getFileDownload(
        bucketId: String,
        fileId: String,
        completion: ((Result<ByteBuffer, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getFileDownload(
                    bucketId: bucketId,
                    fileId: fileId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get File Preview
    ///
    /// Get a file preview image. Currently, this method supports preview for image
    /// files (jpg, png, and gif), other supported formats, like pdf, docs, slides,
    /// and spreadsheets, will return the file icon image. You can also pass query
    /// string arguments for cutting and resizing your preview image. Preview is
    /// supported only for image files smaller than 10MB.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @param Int width
    /// @param Int height
    /// @param String gravity
    /// @param Int quality
    /// @param Int borderWidth
    /// @param String borderColor
    /// @param Int borderRadius
    /// @param Double opacity
    /// @param Int rotation
    /// @param String background
    /// @param String output
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getFilePreview(
        bucketId: String,
        fileId: String,
        width: Int? = nil,
        height: Int? = nil,
        gravity: String? = nil,
        quality: Int? = nil,
        borderWidth: Int? = nil,
        borderColor: String? = nil,
        borderRadius: Int? = nil,
        opacity: Double? = nil,
        rotation: Int? = nil,
        background: String? = nil,
        output: String? = nil,
        completion: ((Result<ByteBuffer, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getFilePreview(
                    bucketId: bucketId,
                    fileId: fileId,
                    width: width,
                    height: height,
                    gravity: gravity,
                    quality: quality,
                    borderWidth: borderWidth,
                    borderColor: borderColor,
                    borderRadius: borderRadius,
                    opacity: opacity,
                    rotation: rotation,
                    background: background,
                    output: output
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

    ///
    /// Get File for View
    ///
    /// Get a file content by its unique ID. This endpoint is similar to the
    /// download method but returns with no  'Content-Disposition: attachment'
    /// header.
    ///
    /// @param String bucketId
    /// @param String fileId
    /// @throws Exception
    /// @return array
    ///
    @available(*, deprecated, message: "Use the async overload instead")
    open func getFileView(
        bucketId: String,
        fileId: String,
        completion: ((Result<ByteBuffer, AppwriteError>) -> Void)? = nil
    ) {
        Task {
            do {
                let result = try await getFileView(
                    bucketId: bucketId,
                    fileId: fileId
                )
                completion?(.success(result))
            } catch {
                completion?(.failure(error as! AppwriteError))
            }
        }
    }

}
