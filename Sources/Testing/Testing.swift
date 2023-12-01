// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import WebKit
import UIKit

public class Testing: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func load(url: URL?) -> WKNavigation? {
        if let url = url {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
    
}
