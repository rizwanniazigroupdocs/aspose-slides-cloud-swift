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


/** Provides options that control how a presentation is saved in TIFF format. */

public struct TiffExportOptions: Codable {

    public enum Compression: String, Codable { 
        case _default = "Default"
        case _none = "None"
        case ccitt3 = "CCITT3"
        case ccitt4 = "CCITT4"
        case lzw = "LZW"
        case rle = "RLE"
    }
    public enum PixelFormat: String, Codable { 
        case format1bppIndexed = "Format1bppIndexed"
        case format4bppIndexed = "Format4bppIndexed"
        case format8bppIndexed = "Format8bppIndexed"
        case format24bppRgb = "Format24bppRgb"
        case format32bppArgb = "Format32bppArgb"
    }
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
    /** Export format. */
    public var format: String?
    /** Compression type. */
    public var compression: Compression?
    /** Width. */
    public var width: Int?
    /** Height. */
    public var height: Int?
    /** Horizontal resolution, in dots per inch. */
    public var dpiX: Int?
    /** Vertical resolution, in dots per inch. */
    public var dpiY: Int?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies the pixel format for the generated images. Read/write ImagePixelFormat. */
    public var pixelFormat: PixelFormat?
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

    public init(format: String?, compression: Compression?, width: Int?, height: Int?, dpiX: Int?, dpiY: Int?, showHiddenSlides: Bool?, pixelFormat: PixelFormat?, notesPosition: NotesPosition?, commentsPosition: CommentsPosition?, commentsAreaWidth: Int?, commentsAreaColor: String?, showCommentsByNoAuthor: Bool?) {
        self.format = format
        self.compression = compression
        self.width = width
        self.height = height
        self.dpiX = dpiX
        self.dpiY = dpiY
        self.showHiddenSlides = showHiddenSlides
        self.pixelFormat = pixelFormat
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
    }


}

