//
//  main.swift
//  Grade_ahn_sang_hoon
//
//  Created by Sanghoon Ahn on 2017. 6. 9..
//  Copyright © 2017년 AHN. All rights reserved.
//

import Foundation

var fileManager: FileManager = FileManager()

let homeDir = fileManager.homeDirectoryForCurrentUser.path

let targetPath = "\(homeDir)/students.json"
let resultTargetPath = "\(homeDir)/result.txt"
var originObj = [[String:Any]]()
var resultDic = [String:String]()
var totalAverage = 0.0
do {
    if (fileManager.fileExists(atPath: targetPath) && fileManager.isReadableFile(atPath: targetPath)){
        if let contents = fileManager.contents(atPath: targetPath) {
            let jsonContents = try JSONSerialization.jsonObject(with: contents, options: [])
            if let dicObject = jsonContents as? [[String:Any]]{
                originObj.append(contentsOf: dicObject)
            }
        } else {
            print("file has no content")
        }
    } else {
        print("file no exist or not readable")
    }
} catch {
    print(error.localizedDescription)
}

for obj in originObj {
    if let grade = obj["grade"] {
        var max = 0.00
        var count = 0
        for (subject, score) in grade as! [String:Int] {
            max += Double(score)
            count += 1
        }
        var average = max/Double(count)
        if (average < 60) {
            resultDic[obj["name"] as! String] = "F"
        } else if (average < 70) {
            resultDic[obj["name"] as! String] = "D"
        } else if (average < 80) {
            resultDic[obj["name"] as! String] = "C"
        } else if (average < 90) {
            resultDic[obj["name"] as! String] = "B"
        } else if (average <= 100) {
            resultDic[obj["name"] as! String] = "A"
        }
        totalAverage += average
    }
}
totalAverage = totalAverage/6.0

let sortedResult = resultDic.sorted(by: {$0.0<$1.0})

totalAverage = round(totalAverage * 100) / 100.0

var resultContent = "성적결과표\n\n전체 평균 : "+"\(totalAverage)\n\n개인별 학점\n"
var completedStudents = "\n수료생\n"
var i = 0
for (name, grade) in sortedResult {
    if (grade != "F" && grade != "D"){
        completedStudents += "\(name)"
        if (i < sortedResult.count-1) {
            completedStudents += ", "
        }else{
            resultContent += "\(name)      : \(grade)\n"
            break
        }
    }
    resultContent += "\(name)       : \(grade)\n"
    i += 1
}
resultContent += completedStudents
print(resultContent)
if (fileManager.fileExists(atPath: resultTargetPath) == false) {
    try fileManager.createFile(atPath: resultTargetPath, contents: nil, attributes: nil)
}

if (fileManager.isWritableFile(atPath: resultTargetPath)) {
    do {
        try resultContent.write(toFile: resultTargetPath, atomically: false, encoding: String.Encoding.utf8)
    } catch {
        print(error.localizedDescription)
    }
}
