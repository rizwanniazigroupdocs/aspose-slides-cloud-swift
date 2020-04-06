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


/** Represents VideoFrame resource. */

public struct VideoFrame: Codable {

    public enum PlayMode: String, Codable { 
        case auto = "Auto"
        case onClick = "OnClick"
        case allSlides = "AllSlides"
        case mixed = "Mixed"
    }
    public enum Volume: String, Codable { 
        case mute = "Mute"
        case low = "Low"
        case medium = "Medium"
        case loud = "Loud"
        case mixed = "Mixed"
    }
    /** Determines whether a video is shown in full screen mode. */
    public var fullScreenMode: Bool?
    /** Determines whether a VideoFrame is hidden.  */
    public var hideAtShowing: Bool?
    /** Determines whether a video is looped. */
    public var playLoopMode: Bool?
    /** Returns or sets the video play mode.   */
    public var playMode: PlayMode?
    /** Determines whether a video is automatically rewinded to start as soon as the movie has finished playing */
    public var rewindVideo: Bool?
    /** Returns or sets the audio volume. */
    public var volume: Volume?
    /** Video data encoded in base64. */
    public var base64Data: String?

    public init(fullScreenMode: Bool?, hideAtShowing: Bool?, playLoopMode: Bool?, playMode: PlayMode?, rewindVideo: Bool?, volume: Volume?, base64Data: String?) {
        self.fullScreenMode = fullScreenMode
        self.hideAtShowing = hideAtShowing
        self.playLoopMode = playLoopMode
        self.playMode = playMode
        self.rewindVideo = rewindVideo
        self.volume = volume
        self.base64Data = base64Data
    }


}

