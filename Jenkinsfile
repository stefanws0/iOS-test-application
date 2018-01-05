#!groovy

node {
    stage ('Clone') {
        echo 'now cloning'
        checkout scm
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
        sh "curl -d \"id=5a4cf07c21568f13f06898a7&path=${env.WORKSPACE}\" -H \"Content-Type: application/x-www-form-urlencoded\" -X POST http://localhost:3000/api/reports"

    }
    
}
