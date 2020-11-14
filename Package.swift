// swift-tools-version:5.1
import PackageDescription

/*! @file Package.swift
    @brief GAppAuth SDK
    @copyright
        Copyright 2020 The GAppAuth SDK Authors. All Rights Reserved.
    @copydetails
        Licensed under the Apache License, Version 2.0 (the "License");
        you may not use this file except in compliance with the License.
        You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

        Unless required by applicable law or agreed to in writing, software
        distributed under the License is distributed on an "AS IS" BASIS,
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and
        limitations under the License.
 */

let package = Package(
    name: "GAppAuth",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "GAppAuth",
            targets: ["GAppAuth"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/google/GTMAppAuth.git", "1.0.0" ..< "2.0.0"),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", "1.4.0" ..< "2.0.0")
    ],
    targets: [
        .target(
            name: "GAppAuth",
            dependencies: [
                "GTMAppAuth",
                "AppAuthCore"
            ],
            path: "Source",
            sources: [
                ".",
                "iOS",
                "macOS"
            ],
            publicHeadersPath: "SwiftPackage"
        )
    ]
)

