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


/** Presentation slide. */

public struct Slide: Codable {

    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Gets or sets the width. */
    public var width: Double?
    /** Gets or sets the height. */
    public var height: Double?
    /** Specifies if shapes of the master slide should be shown on the slide. True by default. */
    public var showMasterShapes: Bool?
    /** Gets or sets the  link to the layout slide. */
    public var layoutSlide: ResourceUriElement?
    /** Gets or sets the  link to list of top-level shapes. */
    public var shapes: ResourceUriElement?
    /** Gets or sets the link to theme. */
    public var theme: ResourceUriElement?
    /** Gets or sets the  link to placeholders. */
    public var placeholders: ResourceUriElement?
    /** Gets or sets the link to images. */
    public var images: ResourceUriElement?
    /** Gets or sets the link to comments. */
    public var comments: ResourceUriElement?
    /** Get or sets the link to slide&#39;s background */
    public var background: ResourceUriElement?
    /** Get or sets the link to notes slide. */
    public var notesSlide: ResourceUriElement?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, width: Double?, height: Double?, showMasterShapes: Bool?, layoutSlide: ResourceUriElement?, shapes: ResourceUriElement?, theme: ResourceUriElement?, placeholders: ResourceUriElement?, images: ResourceUriElement?, comments: ResourceUriElement?, background: ResourceUriElement?, notesSlide: ResourceUriElement?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.width = width
        self.height = height
        self.showMasterShapes = showMasterShapes
        self.layoutSlide = layoutSlide
        self.shapes = shapes
        self.theme = theme
        self.placeholders = placeholders
        self.images = images
        self.comments = comments
        self.background = background
        self.notesSlide = notesSlide
    }


}

