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
