/// Swift Appwrite SDK
/// Produced by Appwrite SDK Generator
///


var client: Client = Client()

client
    .setEndpoint(endpoint: "https://[HOSTNAME_OR_IP]/v1") // Your API Endpoint
    .setProject(value: "5df5acd0d48c2") // Your project ID

var database: Database =  Database(client: client);

var result = database.updateDocument(_collectionId: "[COLLECTION_ID]", _documentId: "[DOCUMENT_ID]", _data: , _read: [], _write: []);
