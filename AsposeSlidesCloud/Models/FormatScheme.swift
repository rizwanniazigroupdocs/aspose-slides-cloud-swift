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


/** Represents Format Scheme for slide&#39;s theme */

public struct FormatScheme: Codable {

    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Background style links. */
    public var backgroundStyles: [ResourceUri]?
    /** Effect style links. */
    public var effectStyles: [ResourceUri]?
    /** Fill style links. */
    public var fillStyles: [ResourceUri]?
    /** Line style links. */
    public var lineStyles: [ResourceUri]?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, backgroundStyles: [ResourceUri]?, effectStyles: [ResourceUri]?, fillStyles: [ResourceUri]?, lineStyles: [ResourceUri]?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.backgroundStyles = backgroundStyles
        self.effectStyles = effectStyles
        self.fillStyles = fillStyles
        self.lineStyles = lineStyles
    }


}

