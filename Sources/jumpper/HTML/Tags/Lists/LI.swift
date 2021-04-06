//
// MIT License
//
// Copyright (c) 2020 micheltlutz
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation

/// Class for list item
public class LI: GenericElement {
    ///Override tag element for input elements. Default is `li`
    override var tag: String {
        get {
            return "li"
        }
    }
    ///Override container element for table row elements defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }
    // MARK: - Initialization
    ///Initialization with Generic Type
    /// - Parameter element: Generic Type `ElementProtocol` or `String`
    public init<T>(_ element: T) {
        super.init()
        if let textElement = element as? String {
            let text = FactoryElements.textWith(textElement)

            objects.append(text)
        } else {
            guard let genericElement = element as? ElementProtocol else { return }

            objects.append(genericElement)
        }
    }
}
