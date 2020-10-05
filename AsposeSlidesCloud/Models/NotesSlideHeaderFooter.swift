/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */


import Foundation


/** Represents header/footer info of notes slide */

public struct NotesSlideHeaderFooter: Codable {

    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** True if date is displayed in the footer */
    public var isDateTimeVisible: Bool?
    /** Text to be displayed as date in the footer */
    public var dateTimeText: String?
    /** True if footer is displayed */
    public var isFooterVisible: Bool?
    /** Text to be displayed in the footer */
    public var footerText: String?
    /** True if header is displayed */
    public var isHeaderVisible: Bool?
    /** Text to be displayed in the header */
    public var headerText: String?
    /** True if slide number is displayed in the footer */
    public var isSlideNumberVisible: Bool?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, isDateTimeVisible: Bool?, dateTimeText: String?, isFooterVisible: Bool?, footerText: String?, isHeaderVisible: Bool?, headerText: String?, isSlideNumberVisible: Bool?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.isDateTimeVisible = isDateTimeVisible
        self.dateTimeText = dateTimeText
        self.isFooterVisible = isFooterVisible
        self.footerText = footerText
        self.isHeaderVisible = isHeaderVisible
        self.headerText = headerText
        self.isSlideNumberVisible = isSlideNumberVisible
    }


}

