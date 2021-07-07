//
//  ViewController.swift
//  String
//
//  Created by Harbros47 on 16.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let arrayString = [
            "Умеют ",
            "же ",
            "шутить ",
            "ребята, ",
            "Хоть ",
            "сказки ",
            "впору ",
            "им ",
            "слагать: ",
            "Нужна ",
            "хорошая ",
            "зарплата! ",
            "Работу, ",
            "чур, ",
            "не ",
            "предлагать. "
        ]
        print( """
            \(oneString(string: arrayString))
            \(splitArray(array: oneString(string: arrayString)))
            \(longString(string: arrayString))
            \(mirror(str: longString(string: arrayString)))
            \(transformation())
            """)
    }
    
    private func oneString(string: [String]) -> String {
        string.reduce("", +).uppercased()
    }
    
    private func splitArray(array: String) -> [String] {
        array
            .split(separator: " ")
            .map { String($0) }
    }
    
    private func longString(string: [String]) -> String {
        string.max(by: { $1.count > $0.count })?.uppercased() ?? "Строка отсутсвует"
    }
    
    private func mirror(str: String) -> String {
        var set = Set<Character>()
        return String(str
            .filter { set.insert($0).inserted }
            .reversed()
        )
    }
    
    private let numbers = "asd323s33w2 23ssew2gg"
    
    private func transformation() -> [Int] {
        numbers.components(separatedBy: CharacterSet.decimalDigits.inverted).compactMap { Int($0) }
    }
}
