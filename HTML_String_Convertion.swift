import UIKit
// Use

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var TextLabel: UILabel!

    var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let html = "<h1><strong>is </strong><i><strong>html <u>fornt-end or</u> backend?It is backend</strong></i></h1>"
       
        if let attributedText = html.attributedHtmlString {
            print(attributedText.string)
            TextLabel.attributedText = attributedText
        }
        
    }
}
extension String {
    var attributedHtmlString: NSAttributedString? {
        guard let data = self.data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}



/extension String {
//    var attributedHtmlString: NSAttributedString? {
//        guard let data = self.data(using: .utf8) else { return nil }
//        do {
//            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
//        } catch {
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//}

//extension String {
//    var attributedHtmlString: NSAttributedString? {
//        guard let data = self.data(using: .utf8) else { return nil }
//        do {
//            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
//                .documentType: NSAttributedString.DocumentType.html,
//                .characterEncoding: String.Encoding.utf8.rawValue
//            ]
//            let attributedString = try NSMutableAttributedString(data: data, options: options, documentAttributes: nil)
//            let range = NSRange(location: 0, length: attributedString.length)
//
//            attributedString.enumerateAttribute(.font, in: range, options: []) { value, range, _ in
//                if let font = value as? UIFont {
//                    let newFont = UIFont(name: "YourCustomMathFont", size: font.pointSize)
//                    attributedString.addAttribute(.font, value: newFont ?? font, range: range)
//                }
//            }
//
//            return attributedString
//        } catch {
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//}
//extension String {
//    var attributedHtmlString: NSAttributedString? {
//        guard let data = self.data(using: .utf8) else { return nil }
//        do {
//            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
//                .documentType: NSAttributedString.DocumentType.html,
//                .characterEncoding: String.Encoding.utf8.rawValue
//            ]
//            let attributedString = try NSMutableAttributedString(data: data, options: options, documentAttributes: nil)
//
//            let range = NSRange(location: 0, length: attributedString.length)
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.lineBreakMode = .byWordWrapping
//            attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
//
//            attributedString.enumerateAttribute(.font, in: range, options: []) { value, range, _ in
//                if let font = value as? UIFont {
//                    let newFont = UIFont(name: "YourCustomMathFont", size: font.pointSize)
//                    attributedString.addAttribute(.font, value: newFont ?? font, range: range)
//                }
//            }
//
//            return attributedString
//        } catch {
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//}
//extension String {
//    var attributedHtmlString: NSAttributedString? {
//        guard let data = self.data(using: .utf8) else { return nil }
//        do {
//            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
//                .documentType: NSAttributedString.DocumentType.html,
//                .characterEncoding: String.Encoding.utf8.rawValue
//            ]
//            let attributedString = try NSMutableAttributedString(data: data, options: options, documentAttributes: nil)
//
//            let range = NSRange(location: 0, length: attributedString.length)
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.lineBreakMode = .byTruncatingTail // or .byClipping
//
//            attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
//
//            attributedString.enumerateAttribute(.font, in: range, options: []) { value, range, _ in
//                if let font = value as? UIFont {
//                    let newFont = UIFont(name: "YourCustomMathFont", size: font.pointSize)
//                    attributedString.addAttribute(.font, value: newFont ?? font, range: range)
//                }
//            }
//
//            return attributedString
//        } catch {
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//}
extension String {
    var attributedHtmlString: NSAttributedString? {
        guard let data = self.data(using: .utf8) else { return nil }
        do {
            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ]
            let attributedString = try NSMutableAttributedString(data: data, options: options, documentAttributes: nil)
            
            let range = NSRange(location: 0, length: attributedString.length)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 0 // Set line spacing to 0 to ensure single line
            attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
            
            attributedString.enumerateAttribute(.font, in: range, options: []) { value, range, _ in
                if let font = value as? UIFont {
                    let newFont = UIFont(name: "YourCustomMathFont", size: font.pointSize)
                    attributedString.addAttribute(.font, value: newFont ?? font, range: range)
                }
            }
            
            return attributedString
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}

