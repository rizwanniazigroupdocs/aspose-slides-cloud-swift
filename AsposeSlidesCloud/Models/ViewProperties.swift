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


/** Slides document properties. */

public struct ViewProperties: Codable {

    public enum LastView: String, Codable { 
        case notDefined = "NotDefined"
        case slideView = "SlideView"
        case slideMasterView = "SlideMasterView"
        case notesView = "NotesView"
        case handoutView = "HandoutView"
        case notesMasterView = "NotesMasterView"
        case outlineView = "OutlineView"
        case slideSorterView = "SlideSorterView"
        case slideThumbnailView = "SlideThumbnailView"
    }
    public enum HorizontalBarState: String, Codable { 
        case minimized = "Minimized"
        case restored = "Restored"
        case maximized = "Maximized"
    }
    public enum VerticalBarState: String, Codable { 
        case minimized = "Minimized"
        case restored = "Restored"
        case maximized = "Maximized"
    }
    public enum ShowComments: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    /** Gets or sets the link to this resource. */
    public var selfUri: ResourceUri?
    /** List of alternate links. */
    public var alternateLinks: [ResourceUri]?
    /** Last used view mode. */
    public var lastView: LastView?
    /** Horizontal bar state. */
    public var horizontalBarState: HorizontalBarState?
    /** Vertical bar state. */
    public var verticalBarState: VerticalBarState?
    /** True to prefer single view. */
    public var preferSingleView: Bool?
    /** The sizing of the side content region of the normal view, when the region is of a variable restored size. */
    public var restoredLeft: NormalViewRestoredProperties?
    /** The sizing of the top slide region of the normal view, when the region is of a variable restored size. */
    public var restoredTop: NormalViewRestoredProperties?
    /** Slide view mode properties. */
    public var slideViewProperties: CommonSlideViewProperties?
    /** Notes view mode properties. */
    public var notesViewProperties: CommonSlideViewProperties?
    /** True if the comments should be shown. */
    public var showComments: ShowComments?

    public init(selfUri: ResourceUri?, alternateLinks: [ResourceUri]?, lastView: LastView?, horizontalBarState: HorizontalBarState?, verticalBarState: VerticalBarState?, preferSingleView: Bool?, restoredLeft: NormalViewRestoredProperties?, restoredTop: NormalViewRestoredProperties?, slideViewProperties: CommonSlideViewProperties?, notesViewProperties: CommonSlideViewProperties?, showComments: ShowComments?) {
        self.selfUri = selfUri
        self.alternateLinks = alternateLinks
        self.lastView = lastView
        self.horizontalBarState = horizontalBarState
        self.verticalBarState = verticalBarState
        self.preferSingleView = preferSingleView
        self.restoredLeft = restoredLeft
        self.restoredTop = restoredTop
        self.slideViewProperties = slideViewProperties
        self.notesViewProperties = notesViewProperties
        self.showComments = showComments
    }


}

