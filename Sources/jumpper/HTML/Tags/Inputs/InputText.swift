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

/**
   Class define a input type text

    ### Usage Example: ###
    ````
    InputText("value", id: "nameField", placeholder: "Name")
    ````
*/
public final class InputText: InputElementBase {
    // MARK: - Initialization
    /// Default initializer input text element
    /// - Parameters:
    ///     - value: This is a value for checkbox **value** `String`
    ///     - id: This is a id for checkbox **id** `String?`
    ///     - placeholder: This is a placeholder for checkbox **placeholder** `String?`
    public init(_ value: String, id: String?, placeholder: String?) {
        super.init(value, type: "text")

        if let placeholder = placeholder {
            addAttribute(("placeholder", placeholder))
        }

        if let id = id {
            addAttribute(("id", id))
        }
    }
}
