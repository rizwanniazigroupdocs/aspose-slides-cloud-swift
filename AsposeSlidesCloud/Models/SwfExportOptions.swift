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


/** Provides options that control how a presentation is saved in SWF format. */

public struct SwfExportOptions: Codable {

    public enum NotesPosition: String, Codable { 
        case _none = "None"
        case bottomFull = "BottomFull"
        case bottomTruncated = "BottomTruncated"
    }
    public enum CommentsPosition: String, Codable { 
        case _none = "None"
        case bottom = "Bottom"
        case _right = "Right"
    }
    /** Setting user password to protect the PDF document.  */
    public var defaultRegularFont: String?
    /** Export format. */
    public var format: String?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies whether the generated SWF document should be compressed or not. Default is true.  */
    public var compressed: Bool?
    /** Specifies whether the generated SWF document should include the integrated document viewer or not. Default is true.  */
    public var viewerIncluded: Bool?
    /** Specifies whether border around pages should be shown. Default is true.  */
    public var showPageBorder: Bool?
    /** Show/hide fullscreen button. Can be overridden in flashvars. Default is true.  */
    public var showFullScreen: Bool?
    /** Show/hide page stepper. Can be overridden in flashvars. Default is true.  */
    public var showPageStepper: Bool?
    /** Show/hide search section. Can be overridden in flashvars. Default is true.  */
    public var showSearch: Bool?
    /** Show/hide whole top pane. Can be overridden in flashvars. Default is true.  */
    public var showTopPane: Bool?
    /** Show/hide bottom pane. Can be overridden in flashvars. Default is true.  */
    public var showBottomPane: Bool?
    /** Show/hide left pane. Can be overridden in flashvars. Default is true.  */
    public var showLeftPane: Bool?
    /** Start with opened left pane. Can be overridden in flashvars. Default is false.  */
    public var startOpenLeftPane: Bool?
    /** Enable/disable context menu. Default is true.  */
    public var enableContextMenu: Bool?
    /** Image that will be displayed as logo in the top right corner of the viewer. The image data is a base 64 string. Image should be 32x64 pixels PNG image, otherwise logo can be displayed improperly.  */
    public var logoImage: String?
    /** Gets or sets the full hyperlink address for a logo. Has an effect only if a LogoImage is specified.  */
    public var logoLink: String?
    /** Specifies the quality of JPEG images. Default is 95. */
    public var jpegQuality: Int?
    /** Gets or sets the position of the notes on the page. */
    public var notesPosition: NotesPosition?
    /** Gets or sets the position of the comments on the page. */
    public var commentsPosition: CommentsPosition?
    /** Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right). */
    public var commentsAreaWidth: Int?
    /** Gets or sets the color of comments area (Applies only if comments are displayed on the right). */
    public var commentsAreaColor: String?
    /** True if comments that have no author are displayed. (Applies only if comments are displayed). */
    public var showCommentsByNoAuthor: Bool?

    public init(defaultRegularFont: String?, format: String?, showHiddenSlides: Bool?, compressed: Bool?, viewerIncluded: Bool?, showPageBorder: Bool?, showFullScreen: Bool?, showPageStepper: Bool?, showSearch: Bool?, showTopPane: Bool?, showBottomPane: Bool?, showLeftPane: Bool?, startOpenLeftPane: Bool?, enableContextMenu: Bool?, logoImage: String?, logoLink: String?, jpegQuality: Int?, notesPosition: NotesPosition?, commentsPosition: CommentsPosition?, commentsAreaWidth: Int?, commentsAreaColor: String?, showCommentsByNoAuthor: Bool?) {
        self.defaultRegularFont = defaultRegularFont
        self.format = format
        self.showHiddenSlides = showHiddenSlides
        self.compressed = compressed
        self.viewerIncluded = viewerIncluded
        self.showPageBorder = showPageBorder
        self.showFullScreen = showFullScreen
        self.showPageStepper = showPageStepper
        self.showSearch = showSearch
        self.showTopPane = showTopPane
        self.showBottomPane = showBottomPane
        self.showLeftPane = showLeftPane
        self.startOpenLeftPane = startOpenLeftPane
        self.enableContextMenu = enableContextMenu
        self.logoImage = logoImage
        self.logoLink = logoLink
        self.jpegQuality = jpegQuality
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
    }


}

