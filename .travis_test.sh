#!/bin/bash

xcodebuild -workspace AQSFacebookMessengerActivity.xcworkspace -scheme AQSFacebookMessengerActivity -destination 'platform=iOS Simulator,name=iPhone 6,OS=8.1' test | xcpretty -c && exit ${PIPESTATUS[0]}

