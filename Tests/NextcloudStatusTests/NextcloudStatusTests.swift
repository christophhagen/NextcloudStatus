import XCTest
@testable import NextcloudStatus
import BinaryCodable

final class NextcloudStatusTests: XCTestCase {

    private func decode(input: String) throws -> NextcloudStatusJson {
        let decoder = JSONDecoder()
        let data = input.data(using: .utf8)!
        return try decoder.decode(NextcloudStatusJson.self, from: data)
    }

    private func check(input: String) throws {
        let decoded = try decode(input: input)
        let encoded = try JSONEncoder().encode(decoded)
        let secondDecode = try JSONDecoder().decode(NextcloudStatusJson.self, from: encoded)
        XCTAssertEqual(decoded, secondDecode)
    }

    func testNextcloudJsonDecoding() throws {
        try check(input: nextcloudTestData1)
        try check(input: nextcloudTestData2)
    }

    @discardableResult
    private func convert(input: String) throws -> NextcloudStatus {
        try decode(input: input).converted()
    }

    func testConversion() throws {
        try convert(input: nextcloudTestData1)
        try convert(input: nextcloudTestData2)
    }

    func encodeAndCompare(input: String) throws {
        let decoded = try decode(input: input)
        let converted = try decoded.converted()
        let encodedOriginal = try BinaryEncoder().encode(decoded)
        let encodedMinimized = try BinaryEncoder().encode(converted)
        let ratio = Double(encodedMinimized.count) / Double(encodedOriginal.count)
        print("Original: \(encodedOriginal.count), minimized: \(encodedMinimized.count), ratio: \(ratio)")
        XCTAssertLessThan(encodedMinimized.count, encodedOriginal.count)
    }

    func testEncodeConverted() throws {
        try encodeAndCompare(input: nextcloudTestData1)
        try encodeAndCompare(input: nextcloudTestData2)
    }
}


private let nextcloudTestData1 =

"""
{
    "ocs": {
        "meta": {
            "status":"ok",
            "statuscode":200,
            "message":"OK"
        },
        "data":{
            "nextcloud":{
                "system":{
                    "version":"26.0.4.2",
                    "theme":"none",
                    "enable_avatars":"yes",
                    "enable_previews":"yes",
                    "memcache.local":"\\\\OC\\\\Memcache\\\\Redis",
                    "memcache.distributed":"none",
                    "filelocking.enabled":"yes",
                    "memcache.locking":"\\\\OC\\\\Memcache\\\\Redis",
                    "debug":"no",
                    "freespace":321564422144,
                    "cpuload":[
                        1.85,
                        1.01,
                        0.59
                    ],
                    "mem_total":3880960,
                    "mem_free":2621440,
                    "swap_total":0,
                    "swap_free":0,
                    "apps":{
                        "num_installed":48,
                        "num_updates_available":0,
                        "app_updates":[]
                    }
                },
                "storage":{
                    "num_users":2,
                    "num_files":7022,
                    "num_storages":3,
                    "num_storages_local":1,
                    "num_storages_home":2,
                    "num_storages_other":0
                },
                "shares":{
                    "num_shares":3,
                    "num_shares_user":0,
                    "num_shares_groups":0,
                    "num_shares_link":3,
                    "num_shares_mail":0,
                    "num_shares_room":0,
                    "num_shares_link_no_password":3,
                    "num_fed_shares_sent":0,
                    "num_fed_shares_received":0,
                    "permissions_3_31":2,
                    "permissions_3_17":1
                }
            },
            "server":{
                "webserver":"Apache",
                "php":{
                    "version":"8.1.20",
                    "memory_limit":536870912,
                    "max_execution_time":3600,
                    "upload_max_filesize":17179869184,
                    "opcache":{
                        "opcache_enabled":true,
                        "cache_full":false,
                        "restart_pending":false,
                        "restart_in_progress":false,
                        "memory_usage":{
                            "used_memory":77342624,
                            "free_memory":54396224,
                            "wasted_memory":2478880,
                            "current_wasted_percentage":1.846909523010254
                        },
                        "interned_strings_usage": {
                            "buffer_size":25165360,
                            "used_memory":6044880,
                            "free_memory":19120480,
                            "number_of_strings":92400
                        },
                        "opcache_statistics":{
                            "num_cached_scripts":2382,
                            "num_cached_keys":4654,
                            "max_cached_keys":16229,
                            "hits":26461574,
                            "start_time":1692559807,
                            "last_restart_time":0,
                            "oom_restarts":0,
                            "hash_restarts":0,
                            "manual_restarts":0,
                            "misses":2627,
                            "blacklist_misses":0,
                            "blacklist_miss_ratio":0,
                            "opcache_hit_rate":99.9900733825291
                        },
                        "jit":{
                            "enabled":false,
                            "on":false,
                            "kind":5,
                            "opt_level":4,
                            "opt_flags":6,
                            "buffer_size":0,
                            "buffer_free":0
                        }
                    },
                    "apcu": [],
                    "extensions":[
                        "Core", "date", "libxml", "openssl", "pcre", "zlib", "bcmath", "bz2", "ctype", "curl", "dom", "hash", "fileinfo", "filter", "ftp", "gd", "gmp", "json", "iconv", "intl", "SPL", "ldap", "mbstring", "pcntl", "PDO", "session", "posix", "Reflection", "standard", "SimpleXML", "mysqlnd", "exif", "sysvsem", "tokenizer", "xml", "xmlreader", "xmlwriter", "zip", "pdo_mysql", "cgi-fcgi", "redis", "Zend OPcache"
                    ]
                },

                "database": {
                    "type":"mysql",
                    "version":"8.0.34",
                    "size":"19693568"
                }
            },
            "activeUsers":{
                "last5minutes":2,
                "last1hour":2,
                "last24hours":2
            }
        }
    }
}

"""

private let nextcloudTestData2 =

"""
{
    "ocs": {
        "meta":{
            "status":"ok",
            "statuscode":200,
            "message":"OK"
        },
        "data":{
            "nextcloud":{
                "system":{
                    "version":"15.0.4.0",
                    "theme":"",
                    "enable_avatars":"yes",
                    "enable_previews":"yes",
                    "memcache.local":"OC\\\\Memcache\\\\APCu",
                    "memcache.distributed":"none",
                    "filelocking.enabled":"yes",
                    "memcache.locking":"OC\\\\Memcache\\\\Redis",
                    "debug":"no",
                    "freespace":48472944640,
                    "cpuload":[
                        0.84999999999999997779553950749686919152736663818359375,
                        1.04000000000000003552713678800500929355621337890625,
                        1.1699999999999999289457264239899814128875732421875
                    ],
                    "mem_total":8183664,
                    "mem_free":5877156,
                    "swap_total":0,
                    "swap_free":0,
                    "apps":{
                        "num_installed":53,
                        "num_updates_available":1,
                        "app_updates": []
                    }
                }
                ,
                "storage":{
                    "num_users":7,
                    "num_files":708860,
                    "num_storages":125,
                    "num_storages_local":7,
                    "num_storages_home":7,
                    "num_storages_other":111
                }
                ,
                "shares":{
                    "num_shares":1,
                    "num_shares_user":0,
                    "num_shares_groups":0,
                    "num_shares_link":0,
                    "num_shares_mail":0,
                    "num_shares_room":0,
                    "num_shares_link_no_password":0,
                    "num_fed_shares_sent":0,
                    "num_fed_shares_received":0,
                    "permissions_3_31":1,
                    "permissions_3_17":1
                }
            }
            ,
            "server":{
                "webserver":"Apache\\/2.4",
                "php":{
                    "version":"7.2.14",
                    "memory_limit":536870912,
                    "max_execution_time":3600,
                    "upload_max_filesize":535822336
                }
                ,
                "database":{
                    "type":"mysql",
                    "version":"10.2.21",
                    "size":"331382784"
                }
            }
            ,
            "activeUsers":{
                "last5minutes":2,
                "last1hour":3,
                "last24hours":5
            }
        }
    }
}


"""
