
/// Deployments List
public class DeploymentList {

    /// Total number of items available on the server.
    public let sum: Int

    /// List of deployments.
    public let deployments: [Deployment]

    init(
        sum: Int,
        deployments: [Deployment]
    ) {
        self.sum = sum
        self.deployments = deployments
    }

    public static func from(map: [String: Any]) -> DeploymentList {
        return DeploymentList(
            sum: map["sum"] as! Int,
            deployments: (map["deployments"] as! [[String: Any]]).map { Deployment.from(map: $0) }
        )
    }

    public func toMap() -> [String: Any] {
        return [
            "sum": sum as Any,
            "deployments": deployments.map { $0.toMap() } as Any
        ]
    }
                                                                                                                                                                                                                                        
}