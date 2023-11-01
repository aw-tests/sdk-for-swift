import Appwrite

let client = Client()
    .setEndpoint("https://cloud.appwrite.io/v1") // Your API Endpoint
    .setProject("5df5acd0d48c2") // Your project ID
    .setKey("919c2d18fb5d4...a2ae413da83346ad2") // Your secret API key

let storage = Storage(client)

let bytes = try await storage.getFileView(
    bucketId: &quot;[BUCKET_ID]&quot;,
    fileId: &quot;[FILE_ID]&quot;
)

