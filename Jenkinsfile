#!groovy

node {
    stage ('Clone') {
        echo 'now cloning'
        checkout scm
        sh "chmod +x xcodebuild"
    }
    stage ('Clean') {
        echo 'now cleaning'
        sh "xcodebuild -project Game.xcodeproj -scheme Game clean"
    }
    stage ('Build') {
        echo 'now building'
        sh "xcodebuild -project Game.xcodeproj -scheme Game build"
    }
    stage ('Test'){
        echo 'now testing'
        sh "curl -d \"id=5a2553069fb9103ac027fda1&path=${env.WORKSPACE}\" -H \"Content-Type: application/x-www-form-urlencoded\" -X POST http://localhost:3000/api/reports"

    }
    
}