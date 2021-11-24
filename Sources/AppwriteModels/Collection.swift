
/// Collection
public class Collection {

    /// Collection ID.
    public let id: String

    /// Collection read permissions.
    public let read: [Any]

    /// Collection write permissions.
    public let write: [Any]

    /// Collection name.
    public let name: String

    /// Collection permission model. Possible values: `document` or `collection`
    public let permission: String

    /// Collection attributes.
    public let attributes: [Any]

    /// Collection indexes.
    public let indexes: [Index]

    init(
        id: String,
        read: [Any],
        write: [Any],
        name: String,
        permission: String,
        attributes: [Any],
        indexes: [Index]
    ) {
        self.id = id
        self.read = read
        self.write = write
        self.name = name
        self.permission = permission
        self.attributes = attributes
        self.indexes = indexes
    }

    public static func from(map: [String: Any]) -> Collection {
        return Collection(
            id: map["$id"] as! String,
            read: map["$read"] as! [Any],
            write: map["$write"] as! [Any],
            name: map["name"] as! String,
            permission: map["permission"] as! String,
            attributes: map["attributes"] as! [Any],
            indexes: (map["indexes"] as! [[String: Any]]).map { Index.from(map: $0) }
        )
    }

    public func toMap() -> [String: Any] {
        return [
            "$id": id as Any,
            "$read": read as Any,
            "$write": write as Any,
            "name": name as Any,
            "permission": permission as Any,
            "attributes": attributes as Any,
            "indexes": indexes.map { $0.toMap() } as Any
        ]
    }
                                                                                                                                                                                                                            
}