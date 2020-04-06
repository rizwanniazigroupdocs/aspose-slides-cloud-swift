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


/** Represents placeholder */

public struct Placeholder: Codable {

    public enum Orientation: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
    }
    public enum Size: String, Codable { 
        case full = "Full"
        case half = "Half"
        case quarter = "Quarter"
    }
    public enum ModelType: String, Codable { 
        case title = "Title"
        case body = "Body"
        case centeredTitle = "CenteredTitle"
        case subtitle = "Subtitle"
        case dateAndTime = "DateAndTime"
        case slideNumber = "SlideNumber"
        case footer = "Footer"
        case header = "Header"
        case object = "Object"
        case chart = "Chart"
        case table = "Table"
        case clipArt = "ClipArt"
        case diagram = "Diagram"
        case media = "Media"
        case slideImage = "SlideImage"
        case picture = "Picture"
    }
    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Index. */
    public var index: Int?
    /** Orientation. */
    public var orientation: Orientation?
    /** Size. */
    public var size: Size?
    /** Placeholder type. */
    public var type: ModelType?
    /** Shape link. */
    public var shape: ResourceUriElement?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, index: Int?, orientation: Orientation?, size: Size?, type: ModelType?, shape: ResourceUriElement?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.index = index
        self.orientation = orientation
        self.size = size
        self.type = type
        self.shape = shape
    }


}

