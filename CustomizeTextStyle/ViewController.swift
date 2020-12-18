//
//  ViewController.swift
//  CustomizeTextStyle
//
//  Created by Ngo Dang tan on 18/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    private func configureUI(){
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
    
        label.font = .systemFont(ofSize: 42)
        
        let string = "Hello World"
        let attributedtext = NSMutableAttributedString(string: string)
        attributedtext.addAttribute(.foregroundColor,
                                    value: UIColor.systemBlue,
                                    range: NSRange(location: 0, length: 5))
        
        attributedtext.addAttribute(.underlineStyle,
                                    value: NSNumber(value: 1),
                                    range: NSRange(location: 0, length: 5))
        
        attributedtext.addAttribute(.kern,
                                    value: NSNumber(value: 6),
                                    range: NSRange(location: 0, length: string.count))
        
        attributedtext.addAttribute(.font,
                                    value: UIFont.systemFont(ofSize: 42, weight: .semibold),
                                    range: NSRange(location: 5, length: string.count-5))
        
        label.attributedText = attributedtext
        
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
    }


}

