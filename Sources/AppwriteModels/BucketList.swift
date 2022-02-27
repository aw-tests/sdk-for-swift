
/// Buckets List
public class BucketList {

    /// Total number of items available on the server.
    public let sum: Int

    /// List of buckets.
    public let buckets: [Bucket]

    init(
        sum: Int,
        buckets: [Bucket]
    ) {
        self.sum = sum
        self.buckets = buckets
    }

    public static func from(map: [String: Any]) -> BucketList {
        return BucketList(
            sum: map["sum"] as! Int,
            buckets: (map["buckets"] as! [[String: Any]]).map { Bucket.from(map: $0) }
        )
    }

    public func toMap() -> [String: Any] {
        return [
            "sum": sum as Any,
            "buckets": buckets.map { $0.toMap() } as Any
        ]
    }
                                                                                                                                                                                                                                        
}