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


/** Slide&#39;s color scheme DTO */

public struct ColorScheme: Codable {

    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** First accent color. */
    public var accent1: String?
    /** Second accent color. */
    public var accent2: String?
    /** Third accent color. */
    public var accent3: String?
    /** Fourth accent color. */
    public var accent4: String?
    /** Fifth accent color. */
    public var accent5: String?
    /** Sixth accent color. */
    public var accent6: String?
    /** First dark color. */
    public var dark1: String?
    /** Second dark color. */
    public var dark2: String?
    /** Visited hyperlink color. */
    public var followedHyperlink: String?
    /** Hyperlink color/ */
    public var hyperlink: String?
    /** First light color. */
    public var light1: String?
    /** Second light color. */
    public var light2: String?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, accent1: String?, accent2: String?, accent3: String?, accent4: String?, accent5: String?, accent6: String?, dark1: String?, dark2: String?, followedHyperlink: String?, hyperlink: String?, light1: String?, light2: String?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.accent1 = accent1
        self.accent2 = accent2
        self.accent3 = accent3
        self.accent4 = accent4
        self.accent5 = accent5
        self.accent6 = accent6
        self.dark1 = dark1
        self.dark2 = dark2
        self.followedHyperlink = followedHyperlink
        self.hyperlink = hyperlink
        self.light1 = light1
        self.light2 = light2
    }


}

