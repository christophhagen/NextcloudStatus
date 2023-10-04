# NextcloudStatus

This Swift package contains the data model for the status data returned by a nextcloud instance, and a client to request this status for specific servers.

## Setup

The Nextcloud server must have the [serverinfo](https://github.com/nextcloud/serverinfo) app installed.
This app is part of the standard Nextcloud package and can be found in the directory `nextcloud/apps/serverinfo`.

An appropriate API token must be configured to access the status data.
 
For [nextcloud-snap](https://github.com/nextcloud-snap/nextcloud-snap), this can be achieved with the following command:
```bash
occ config:app:set serverinfo token --value <token>
```

## Usage

Create a client for one Nextcloud instance:

```swift
import NextcloudStatus

let client = NextcloudStatusClient(
    url: "https://nextcloud.example.com",
    token: "mySecret")
    
let status = try await client.status()
print(status.data.nextcloud.system.version)
```

