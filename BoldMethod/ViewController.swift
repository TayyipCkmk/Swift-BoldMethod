//
//  ViewController.swift
//  BoldMethod
//
//  Created by Tayyip Çakmak on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var testText = "Avrupa’dan hızlı teslimat!:*2-4 iş günü* içerisinde kapında!"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let removeDoubleDots = testText.replacingOccurrences(of: ":", with: "\n")
        let removeStars = removeDoubleDots.replacingOccurrences(of: "*", with: "")
        let dots = testText.firstIndex(of: ":")
        let firstStar = testText.firstIndex(of: "*")
        let endStar = testText.lastIndex(of: "*")
        let dotsIndex = dots!.utf16Offset(in: testText)
        let firstStarIndex = firstStar!.utf16Offset(in: testText)
        let endStarIndex = endStar!.utf16Offset(in: testText)
        let attributedString = NSMutableAttributedString(string: removeStars)
        attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 22), range: NSRange(location: 0, length: dotsIndex))
        attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 22), range: NSRange(location: firstStarIndex, length: endStarIndex - firstStarIndex))

        textLabel.attributedText = attributedString

        
    }


}

