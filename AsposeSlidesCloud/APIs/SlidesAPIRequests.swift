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


public struct copyFileRequest: Codable {

    /** Copy file */
    public var srcPath: String

    /** Copy file */
    public var destPath: String

    /** Copy file */
    public var srcStorageName: String

    /** Copy file */
    public var destStorageName: String

    /** Copy file */
    public var versionId: String

    public init(srcPath: String, destPath: String, srcStorageName: String, destStorageName: String, versionId: String) {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
        self.versionId = versionId
    }
}

public struct copyFolderRequest: Codable {

    /** Copy folder */
    public var srcPath: String

    /** Copy folder */
    public var destPath: String

    /** Copy folder */
    public var srcStorageName: String

    /** Copy folder */
    public var destStorageName: String

    public init(srcPath: String, destPath: String, srcStorageName: String, destStorageName: String) {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
    }
}

public struct createFolderRequest: Codable {

    /** Create the folder */
    public var path: String

    /** Create the folder */
    public var storageName: String

    public init(path: String, storageName: String) {
        self.path = path
        self.storageName = storageName
    }
}

public struct deleteFileRequest: Codable {

    /** Delete file */
    public var path: String

    /** Delete file */
    public var storageName: String

    /** Delete file */
    public var versionId: String

    public init(path: String, storageName: String, versionId: String) {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct deleteFolderRequest: Codable {

    /** Delete folder */
    public var path: String

    /** Delete folder */
    public var storageName: String

    /** Delete folder */
    public var recursive: Bool

    public init(path: String, storageName: String, recursive: Bool) {
        self.path = path
        self.storageName = storageName
        self.recursive = recursive
    }
}

public struct deleteNotesSlideRequest: Codable {

    /** Remove notes slide. */
    public var name: String

    /** Remove notes slide. */
    public var slideIndex: Int

    /** Remove notes slide. */
    public var password: String

    /** Remove notes slide. */
    public var folder: String

    /** Remove notes slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlideParagraphRequest: Codable {

    /** Remove a paragraph. */
    public var name: String

    /** Remove a paragraph. */
    public var slideIndex: Int

    /** Remove a paragraph. */
    public var path: String

    /** Remove a paragraph. */
    public var shapeIndex: Int

    /** Remove a paragraph. */
    public var paragraphIndex: Int

    /** Remove a paragraph. */
    public var password: String

    /** Remove a paragraph. */
    public var folder: String

    /** Remove a paragraph. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlideParagraphsRequest: Codable {

    /** Remove a range of paragraphs. */
    public var name: String

    /** Remove a range of paragraphs. */
    public var slideIndex: Int

    /** Remove a range of paragraphs. */
    public var path: String

    /** Remove a range of paragraphs. */
    public var shapeIndex: Int

    /** Remove a range of paragraphs. */
    public var paragraphs: [Int]

    /** Remove a range of paragraphs. */
    public var password: String

    /** Remove a range of paragraphs. */
    public var folder: String

    /** Remove a range of paragraphs. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphs: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphs = paragraphs
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlidePortionRequest: Codable {

    /** Remove a portion. */
    public var name: String

    /** Remove a portion. */
    public var slideIndex: Int

    /** Remove a portion. */
    public var path: String

    /** Remove a portion. */
    public var shapeIndex: Int

    /** Remove a portion. */
    public var paragraphIndex: Int

    /** Remove a portion. */
    public var portionIndex: Int

    /** Remove a portion. */
    public var password: String

    /** Remove a portion. */
    public var folder: String

    /** Remove a portion. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlidePortionsRequest: Codable {

    /** Remove a range of portions. */
    public var name: String

    /** Remove a range of portions. */
    public var slideIndex: Int

    /** Remove a range of portions. */
    public var path: String

    /** Remove a range of portions. */
    public var shapeIndex: Int

    /** Remove a range of portions. */
    public var paragraphIndex: Int

    /** Remove a range of portions. */
    public var portions: [Int]

    /** Remove a range of portions. */
    public var password: String

    /** Remove a range of portions. */
    public var folder: String

    /** Remove a range of portions. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portions: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portions = portions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlideShapeRequest: Codable {

    /** Remove a shape. */
    public var name: String

    /** Remove a shape. */
    public var slideIndex: Int

    /** Remove a shape. */
    public var path: String

    /** Remove a shape. */
    public var shapeIndex: Int

    /** Remove a shape. */
    public var password: String

    /** Remove a shape. */
    public var folder: String

    /** Remove a shape. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteNotesSlideShapesRequest: Codable {

    /** Remove a range of shapes. */
    public var name: String

    /** Remove a range of shapes. */
    public var slideIndex: Int

    /** Remove a range of shapes. */
    public var path: String

    /** Remove a range of shapes. */
    public var shapes: [Int]

    /** Remove a range of shapes. */
    public var password: String

    /** Remove a range of shapes. */
    public var folder: String

    /** Remove a range of shapes. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapes: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapes = shapes
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteParagraphRequest: Codable {

    /** Remove a paragraph. */
    public var name: String

    /** Remove a paragraph. */
    public var slideIndex: Int

    /** Remove a paragraph. */
    public var path: String

    /** Remove a paragraph. */
    public var shapeIndex: Int

    /** Remove a paragraph. */
    public var paragraphIndex: Int

    /** Remove a paragraph. */
    public var password: String

    /** Remove a paragraph. */
    public var folder: String

    /** Remove a paragraph. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteParagraphsRequest: Codable {

    /** Remove a range of paragraphs. */
    public var name: String

    /** Remove a range of paragraphs. */
    public var slideIndex: Int

    /** Remove a range of paragraphs. */
    public var path: String

    /** Remove a range of paragraphs. */
    public var shapeIndex: Int

    /** Remove a range of paragraphs. */
    public var paragraphs: [Int]

    /** Remove a range of paragraphs. */
    public var password: String

    /** Remove a range of paragraphs. */
    public var folder: String

    /** Remove a range of paragraphs. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphs: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphs = paragraphs
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deletePortionRequest: Codable {

    /** Remove a portion. */
    public var name: String

    /** Remove a portion. */
    public var slideIndex: Int

    /** Remove a portion. */
    public var path: String

    /** Remove a portion. */
    public var shapeIndex: Int

    /** Remove a portion. */
    public var paragraphIndex: Int

    /** Remove a portion. */
    public var portionIndex: Int

    /** Remove a portion. */
    public var password: String

    /** Remove a portion. */
    public var folder: String

    /** Remove a portion. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deletePortionsRequest: Codable {

    /** Remove a range of portions. */
    public var name: String

    /** Remove a range of portions. */
    public var slideIndex: Int

    /** Remove a range of portions. */
    public var path: String

    /** Remove a range of portions. */
    public var shapeIndex: Int

    /** Remove a range of portions. */
    public var paragraphIndex: Int

    /** Remove a range of portions. */
    public var portions: [Int]

    /** Remove a range of portions. */
    public var password: String

    /** Remove a range of portions. */
    public var folder: String

    /** Remove a range of portions. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portions: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portions = portions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationRequest: Codable {

    /** Remove animation from a slide. */
    public var name: String

    /** Remove animation from a slide. */
    public var slideIndex: Int

    /** Remove animation from a slide. */
    public var password: String

    /** Remove animation from a slide. */
    public var folder: String

    /** Remove animation from a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationEffectRequest: Codable {

    /** Remove an effect from slide animation. */
    public var name: String

    /** Remove an effect from slide animation. */
    public var slideIndex: Int

    /** Remove an effect from slide animation. */
    public var effectIndex: Int

    /** Remove an effect from slide animation. */
    public var password: String

    /** Remove an effect from slide animation. */
    public var folder: String

    /** Remove an effect from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, effectIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.effectIndex = effectIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationInteractiveSequenceRequest: Codable {

    /** Remove an interactive sequence from slide animation. */
    public var name: String

    /** Remove an interactive sequence from slide animation. */
    public var slideIndex: Int

    /** Remove an interactive sequence from slide animation. */
    public var sequenceIndex: Int

    /** Remove an interactive sequence from slide animation. */
    public var password: String

    /** Remove an interactive sequence from slide animation. */
    public var folder: String

    /** Remove an interactive sequence from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Remove an effect from slide animation interactive sequence. */
    public var name: String

    /** Remove an effect from slide animation interactive sequence. */
    public var slideIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var sequenceIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var effectIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var password: String

    /** Remove an effect from slide animation interactive sequence. */
    public var folder: String

    /** Remove an effect from slide animation interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effectIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effectIndex = effectIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationInteractiveSequencesRequest: Codable {

    /** Clear all interactive sequences from slide animation. */
    public var name: String

    /** Clear all interactive sequences from slide animation. */
    public var slideIndex: Int

    /** Clear all interactive sequences from slide animation. */
    public var password: String

    /** Clear all interactive sequences from slide animation. */
    public var folder: String

    /** Clear all interactive sequences from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideAnimationMainSequenceRequest: Codable {

    /** Clear main sequence in slide animation. */
    public var name: String

    /** Clear main sequence in slide animation. */
    public var slideIndex: Int

    /** Clear main sequence in slide animation. */
    public var password: String

    /** Clear main sequence in slide animation. */
    public var folder: String

    /** Clear main sequence in slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideByIndexRequest: Codable {

    /** Delete a presentation slide by index. */
    public var name: String

    /** Delete a presentation slide by index. */
    public var slideIndex: Int

    /** Delete a presentation slide by index. */
    public var password: String

    /** Delete a presentation slide by index. */
    public var folder: String

    /** Delete a presentation slide by index. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideShapeRequest: Codable {

    /** Remove a shape. */
    public var name: String

    /** Remove a shape. */
    public var slideIndex: Int

    /** Remove a shape. */
    public var path: String

    /** Remove a shape. */
    public var shapeIndex: Int

    /** Remove a shape. */
    public var password: String

    /** Remove a shape. */
    public var folder: String

    /** Remove a shape. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlideShapesRequest: Codable {

    /** Remove a range of shapes. */
    public var name: String

    /** Remove a range of shapes. */
    public var slideIndex: Int

    /** Remove a range of shapes. */
    public var path: String

    /** Remove a range of shapes. */
    public var shapes: [Int]

    /** Remove a range of shapes. */
    public var password: String

    /** Remove a range of shapes. */
    public var folder: String

    /** Remove a range of shapes. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapes: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapes = shapes
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlidesCleanSlidesListRequest: Codable {

    /** Delete presentation slides. */
    public var name: String

    /** Delete presentation slides. */
    public var slides: [Int]

    /** Delete presentation slides. */
    public var password: String

    /** Delete presentation slides. */
    public var folder: String

    /** Delete presentation slides. */
    public var storage: String

    public init(name: String, slides: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.slides = slides
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlidesDocumentPropertiesRequest: Codable {

    /** Clean document properties. */
    public var name: String

    /** Clean document properties. */
    public var password: String

    /** Clean document properties. */
    public var folder: String

    /** Clean document properties. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlidesDocumentPropertyRequest: Codable {

    /** Delete document property. */
    public var name: String

    /** Delete document property. */
    public var propertyName: String

    /** Delete document property. */
    public var password: String

    /** Delete document property. */
    public var folder: String

    /** Delete document property. */
    public var storage: String

    public init(name: String, propertyName: String, password: String, folder: String, storage: String) {
        self.name = name
        self.propertyName = propertyName
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct deleteSlidesSlideBackgroundRequest: Codable {

    /** Remove background from a slide. */
    public var name: String

    /** Remove background from a slide. */
    public var slideIndex: Int

    /** Remove background from a slide. */
    public var password: String

    /** Remove background from a slide. */
    public var folder: String

    /** Remove background from a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct downloadFileRequest: Codable {

    /** Download file */
    public var path: String

    /** Download file */
    public var storageName: String

    /** Download file */
    public var versionId: String

    public init(path: String, storageName: String, versionId: String) {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct getDiscUsageRequest: Codable {

    /** Get disc usage */
    public var storageName: String

    public init(storageName: String) {
        self.storageName = storageName
    }
}

public struct getFileVersionsRequest: Codable {

    /** Get file versions */
    public var path: String

    /** Get file versions */
    public var storageName: String

    public init(path: String, storageName: String) {
        self.path = path
        self.storageName = storageName
    }
}

public struct getFilesListRequest: Codable {

    /** Get all files and folders within a folder */
    public var path: String

    /** Get all files and folders within a folder */
    public var storageName: String

    public init(path: String, storageName: String) {
        self.path = path
        self.storageName = storageName
    }
}

public struct getLayoutSlideRequest: Codable {

    /** Read presentation layoutSlide info. */
    public var name: String

    /** Read presentation layoutSlide info. */
    public var slideIndex: Int

    /** Read presentation layoutSlide info. */
    public var password: String

    /** Read presentation layoutSlide info. */
    public var folder: String

    /** Read presentation layoutSlide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getLayoutSlidesListRequest: Codable {

    /** Read presentation layoutSlides info. */
    public var name: String

    /** Read presentation layoutSlides info. */
    public var password: String

    /** Read presentation layoutSlides info. */
    public var folder: String

    /** Read presentation layoutSlides info. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getMasterSlideRequest: Codable {

    /** Read presentation masterSlide info. */
    public var name: String

    /** Read presentation masterSlide info. */
    public var slideIndex: Int

    /** Read presentation masterSlide info. */
    public var password: String

    /** Read presentation masterSlide info. */
    public var folder: String

    /** Read presentation masterSlide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getMasterSlidesListRequest: Codable {

    /** Read presentation masterSlides info. */
    public var name: String

    /** Read presentation masterSlides info. */
    public var password: String

    /** Read presentation masterSlides info. */
    public var folder: String

    /** Read presentation masterSlides info. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideRequest: Codable {

    /** Read notes slide info. */
    public var name: String

    /** Read notes slide info. */
    public var slideIndex: Int

    /** Read notes slide info. */
    public var password: String

    /** Read notes slide info. */
    public var folder: String

    /** Read notes slide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapeRequest: Codable {

    /** Read slide shape info. */
    public var name: String

    /** Read slide shape info. */
    public var slideIndex: Int

    /** Read slide shape info. */
    public var path: String

    /** Read slide shape info. */
    public var shapeIndex: Int

    /** Read slide shape info. */
    public var password: String

    /** Read slide shape info. */
    public var folder: String

    /** Read slide shape info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapeParagraphRequest: Codable {

    /** Read shape paragraph info. */
    public var name: String

    /** Read shape paragraph info. */
    public var slideIndex: Int

    /** Read shape paragraph info. */
    public var path: String

    /** Read shape paragraph info. */
    public var shapeIndex: Int

    /** Read shape paragraph info. */
    public var paragraphIndex: Int

    /** Read shape paragraph info. */
    public var password: String

    /** Read shape paragraph info. */
    public var folder: String

    /** Read shape paragraph info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapeParagraphsRequest: Codable {

    /** Read shape paragraphs info. */
    public var name: String

    /** Read shape paragraphs info. */
    public var slideIndex: Int

    /** Read shape paragraphs info. */
    public var path: String

    /** Read shape paragraphs info. */
    public var shapeIndex: Int

    /** Read shape paragraphs info. */
    public var password: String

    /** Read shape paragraphs info. */
    public var folder: String

    /** Read shape paragraphs info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapePortionRequest: Codable {

    /** Read paragraph portion info. */
    public var name: String

    /** Read paragraph portion info. */
    public var slideIndex: Int

    /** Read paragraph portion info. */
    public var path: String

    /** Read paragraph portion info. */
    public var shapeIndex: Int

    /** Read paragraph portion info. */
    public var paragraphIndex: Int

    /** Read paragraph portion info. */
    public var portionIndex: Int

    /** Read paragraph portion info. */
    public var password: String

    /** Read paragraph portion info. */
    public var folder: String

    /** Read paragraph portion info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapePortionsRequest: Codable {

    /** Read paragraph portions info. */
    public var name: String

    /** Read paragraph portions info. */
    public var slideIndex: Int

    /** Read paragraph portions info. */
    public var path: String

    /** Read paragraph portions info. */
    public var shapeIndex: Int

    /** Read paragraph portions info. */
    public var paragraphIndex: Int

    /** Read paragraph portions info. */
    public var password: String

    /** Read paragraph portions info. */
    public var folder: String

    /** Read paragraph portions info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideShapesRequest: Codable {

    /** Read slide shapes info. */
    public var name: String

    /** Read slide shapes info. */
    public var slideIndex: Int

    /** Read slide shapes info. */
    public var path: String

    /** Read slide shapes info. */
    public var password: String

    /** Read slide shapes info. */
    public var folder: String

    /** Read slide shapes info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getNotesSlideWithFormatRequest: Codable {

    /** Convert notes slide to the specified image format. */
    public var name: String

    /** Convert notes slide to the specified image format. */
    public var slideIndex: Int

    /** Convert notes slide to the specified image format. */
    public var format: String

    /** Convert notes slide to the specified image format. */
    public var width: Int?

    /** Convert notes slide to the specified image format. */
    public var height: Int?

    /** Convert notes slide to the specified image format. */
    public var password: String

    /** Convert notes slide to the specified image format. */
    public var folder: String

    /** Convert notes slide to the specified image format. */
    public var storage: String

    /** Convert notes slide to the specified image format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, width: Int, height: Int, password: String, folder: String, storage: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct getParagraphPortionRequest: Codable {

    /** Read paragraph portion info. */
    public var name: String

    /** Read paragraph portion info. */
    public var slideIndex: Int

    /** Read paragraph portion info. */
    public var path: String

    /** Read paragraph portion info. */
    public var shapeIndex: Int

    /** Read paragraph portion info. */
    public var paragraphIndex: Int

    /** Read paragraph portion info. */
    public var portionIndex: Int

    /** Read paragraph portion info. */
    public var password: String

    /** Read paragraph portion info. */
    public var folder: String

    /** Read paragraph portion info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getParagraphPortionsRequest: Codable {

    /** Read paragraph portions info. */
    public var name: String

    /** Read paragraph portions info. */
    public var slideIndex: Int

    /** Read paragraph portions info. */
    public var path: String

    /** Read paragraph portions info. */
    public var shapeIndex: Int

    /** Read paragraph portions info. */
    public var paragraphIndex: Int

    /** Read paragraph portions info. */
    public var password: String

    /** Read paragraph portions info. */
    public var folder: String

    /** Read paragraph portions info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlideAnimationRequest: Codable {

    /** Read slide animation effects. */
    public var name: String

    /** Read slide animation effects. */
    public var slideIndex: Int

    /** Read slide animation effects. */
    public var shapeIndex: Int

    /** Read slide animation effects. */
    public var password: String

    /** Read slide animation effects. */
    public var folder: String

    /** Read slide animation effects. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlideShapeRequest: Codable {

    /** Read slide shape info. */
    public var name: String

    /** Read slide shape info. */
    public var slideIndex: Int

    /** Read slide shape info. */
    public var path: String

    /** Read slide shape info. */
    public var shapeIndex: Int

    /** Read slide shape info. */
    public var password: String

    /** Read slide shape info. */
    public var folder: String

    /** Read slide shape info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlideShapeParagraphRequest: Codable {

    /** Read shape paragraph info. */
    public var name: String

    /** Read shape paragraph info. */
    public var slideIndex: Int

    /** Read shape paragraph info. */
    public var path: String

    /** Read shape paragraph info. */
    public var shapeIndex: Int

    /** Read shape paragraph info. */
    public var paragraphIndex: Int

    /** Read shape paragraph info. */
    public var password: String

    /** Read shape paragraph info. */
    public var folder: String

    /** Read shape paragraph info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlideShapeParagraphsRequest: Codable {

    /** Read shape paragraphs info. */
    public var name: String

    /** Read shape paragraphs info. */
    public var slideIndex: Int

    /** Read shape paragraphs info. */
    public var path: String

    /** Read shape paragraphs info. */
    public var shapeIndex: Int

    /** Read shape paragraphs info. */
    public var password: String

    /** Read shape paragraphs info. */
    public var folder: String

    /** Read shape paragraphs info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlideShapesRequest: Codable {

    /** Read slide shapes info. */
    public var name: String

    /** Read slide shapes info. */
    public var slideIndex: Int

    /** Read slide shapes info. */
    public var path: String

    /** Read slide shapes info. */
    public var password: String

    /** Read slide shapes info. */
    public var folder: String

    /** Read slide shapes info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesApiInfoRequest: Codable {

    public init() {
    }
}

public struct getSlidesDocumentRequest: Codable {

    /** Read presentation info. */
    public var name: String

    /** Read presentation info. */
    public var password: String

    /** Read presentation info. */
    public var storage: String

    /** Read presentation info. */
    public var folder: String

    public init(name: String, password: String, storage: String, folder: String) {
        self.name = name
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct getSlidesDocumentPropertiesRequest: Codable {

    /** Read presentation document properties. */
    public var name: String

    /** Read presentation document properties. */
    public var password: String

    /** Read presentation document properties. */
    public var folder: String

    /** Read presentation document properties. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesDocumentPropertyRequest: Codable {

    /** Read presentation document property. */
    public var name: String

    /** Read presentation document property. */
    public var propertyName: String

    /** Read presentation document property. */
    public var password: String

    /** Read presentation document property. */
    public var folder: String

    /** Read presentation document property. */
    public var storage: String

    public init(name: String, propertyName: String, password: String, folder: String, storage: String) {
        self.name = name
        self.propertyName = propertyName
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesImageWithDefaultFormatRequest: Codable {

    /** Get image binary data. */
    public var name: String

    /** Get image binary data. */
    public var index: Int

    /** Get image binary data. */
    public var password: String

    /** Get image binary data. */
    public var folder: String

    /** Get image binary data. */
    public var storage: String

    public init(name: String, index: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.index = index
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesImageWithFormatRequest: Codable {

    /** Get image in specified format. */
    public var name: String

    /** Get image in specified format. */
    public var index: Int

    /** Get image in specified format. */
    public var format: String

    /** Get image in specified format. */
    public var password: String

    /** Get image in specified format. */
    public var folder: String

    /** Get image in specified format. */
    public var storage: String

    public init(name: String, index: Int, format: String, password: String, folder: String, storage: String) {
        self.name = name
        self.index = index
        self.format = format
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesImagesRequest: Codable {

    /** Read presentation images info. */
    public var name: String

    /** Read presentation images info. */
    public var password: String

    /** Read presentation images info. */
    public var folder: String

    /** Read presentation images info. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesPlaceholderRequest: Codable {

    /** Read slide placeholder info. */
    public var name: String

    /** Read slide placeholder info. */
    public var slideIndex: Int

    /** Read slide placeholder info. */
    public var placeholderIndex: Int

    /** Read slide placeholder info. */
    public var password: String

    /** Read slide placeholder info. */
    public var folder: String

    /** Read slide placeholder info. */
    public var storage: String

    public init(name: String, slideIndex: Int, placeholderIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.placeholderIndex = placeholderIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesPlaceholdersRequest: Codable {

    /** Read slide placeholders info. */
    public var name: String

    /** Read slide placeholders info. */
    public var slideIndex: Int

    /** Read slide placeholders info. */
    public var password: String

    /** Read slide placeholders info. */
    public var folder: String

    /** Read slide placeholders info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesPresentationTextItemsRequest: Codable {

    /** Extract presentation text items. */
    public var name: String

    /** Extract presentation text items. */
    public var withEmpty: Bool

    /** Extract presentation text items. */
    public var password: String

    /** Extract presentation text items. */
    public var folder: String

    /** Extract presentation text items. */
    public var storage: String

    public init(name: String, withEmpty: Bool, password: String, folder: String, storage: String) {
        self.name = name
        self.withEmpty = withEmpty
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlideRequest: Codable {

    /** Read presentation slide info. */
    public var name: String

    /** Read presentation slide info. */
    public var slideIndex: Int

    /** Read presentation slide info. */
    public var password: String

    /** Read presentation slide info. */
    public var folder: String

    /** Read presentation slide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlideBackgroundRequest: Codable {

    /** Read slide background info. */
    public var name: String

    /** Read slide background info. */
    public var slideIndex: Int

    /** Read slide background info. */
    public var password: String

    /** Read slide background info. */
    public var folder: String

    /** Read slide background info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlideCommentsRequest: Codable {

    /** Read presentation slide comments. */
    public var name: String

    /** Read presentation slide comments. */
    public var slideIndex: Int

    /** Read presentation slide comments. */
    public var password: String

    /** Read presentation slide comments. */
    public var folder: String

    /** Read presentation slide comments. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlideImagesRequest: Codable {

    /** Read slide images info. */
    public var name: String

    /** Read slide images info. */
    public var slideIndex: Int

    /** Read slide images info. */
    public var password: String

    /** Read slide images info. */
    public var folder: String

    /** Read slide images info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlideTextItemsRequest: Codable {

    /** Extract slide text items. */
    public var name: String

    /** Extract slide text items. */
    public var slideIndex: Int

    /** Extract slide text items. */
    public var withEmpty: Bool

    /** Extract slide text items. */
    public var password: String

    /** Extract slide text items. */
    public var folder: String

    /** Extract slide text items. */
    public var storage: String

    public init(name: String, slideIndex: Int, withEmpty: Bool, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.withEmpty = withEmpty
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesSlidesListRequest: Codable {

    /** Read presentation slides info. */
    public var name: String

    /** Read presentation slides info. */
    public var password: String

    /** Read presentation slides info. */
    public var folder: String

    /** Read presentation slides info. */
    public var storage: String

    public init(name: String, password: String, folder: String, storage: String) {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesThemeRequest: Codable {

    /** Read slide theme info. */
    public var name: String

    /** Read slide theme info. */
    public var slideIndex: Int

    /** Read slide theme info. */
    public var password: String

    /** Read slide theme info. */
    public var folder: String

    /** Read slide theme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesThemeColorSchemeRequest: Codable {

    /** Read slide theme color scheme info. */
    public var name: String

    /** Read slide theme color scheme info. */
    public var slideIndex: Int

    /** Read slide theme color scheme info. */
    public var password: String

    /** Read slide theme color scheme info. */
    public var folder: String

    /** Read slide theme color scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesThemeFontSchemeRequest: Codable {

    /** Read slide theme font scheme info. */
    public var name: String

    /** Read slide theme font scheme info. */
    public var slideIndex: Int

    /** Read slide theme font scheme info. */
    public var password: String

    /** Read slide theme font scheme info. */
    public var folder: String

    /** Read slide theme font scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct getSlidesThemeFormatSchemeRequest: Codable {

    /** Read slide theme format scheme info. */
    public var name: String

    /** Read slide theme format scheme info. */
    public var slideIndex: Int

    /** Read slide theme format scheme info. */
    public var password: String

    /** Read slide theme format scheme info. */
    public var folder: String

    /** Read slide theme format scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct moveFileRequest: Codable {

    /** Move file */
    public var srcPath: String

    /** Move file */
    public var destPath: String

    /** Move file */
    public var srcStorageName: String

    /** Move file */
    public var destStorageName: String

    /** Move file */
    public var versionId: String

    public init(srcPath: String, destPath: String, srcStorageName: String, destStorageName: String, versionId: String) {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
        self.versionId = versionId
    }
}

public struct moveFolderRequest: Codable {

    /** Move folder */
    public var srcPath: String

    /** Move folder */
    public var destPath: String

    /** Move folder */
    public var srcStorageName: String

    /** Move folder */
    public var destStorageName: String

    public init(srcPath: String, destPath: String, srcStorageName: String, destStorageName: String) {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
    }
}

public struct objectExistsRequest: Codable {

    /** Check if file or folder exists */
    public var path: String

    /** Check if file or folder exists */
    public var storageName: String

    /** Check if file or folder exists */
    public var versionId: String

    public init(path: String, storageName: String, versionId: String) {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct postAddNewParagraphRequest: Codable {

    /** Creates new paragraph. */
    public var name: String

    /** Creates new paragraph. */
    public var slideIndex: Int

    /** Creates new paragraph. */
    public var path: String

    /** Creates new paragraph. */
    public var shapeIndex: Int

    /** Creates new paragraph. */
    public var dto: Paragraph

    /** Creates new paragraph. */
    public var password: String

    /** Creates new paragraph. */
    public var folder: String

    /** Creates new paragraph. */
    public var storage: String

    /** Creates new paragraph. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: Paragraph, password: String, folder: String, storage: String, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct postAddNewPortionRequest: Codable {

    /** Creates new portion. */
    public var name: String

    /** Creates new portion. */
    public var slideIndex: Int

    /** Creates new portion. */
    public var path: String

    /** Creates new portion. */
    public var shapeIndex: Int

    /** Creates new portion. */
    public var paragraphIndex: Int

    /** Creates new portion. */
    public var dto: Portion

    /** Creates new portion. */
    public var password: String

    /** Creates new portion. */
    public var folder: String

    /** Creates new portion. */
    public var storage: String

    /** Creates new portion. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Portion, password: String, folder: String, storage: String, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct postAddNewShapeRequest: Codable {

    /** Create new shape. */
    public var name: String

    /** Create new shape. */
    public var slideIndex: Int

    /** Create new shape. */
    public var path: String

    /** Create new shape. */
    public var dto: ShapeBase

    /** Create new shape. */
    public var password: String

    /** Create new shape. */
    public var folder: String

    /** Create new shape. */
    public var storage: String

    /** Create new shape. */
    public var shapeToClone: Int?

    /** Create new shape. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, dto: ShapeBase, password: String, folder: String, storage: String, shapeToClone: Int, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.shapeToClone = shapeToClone
        self.position = position
    }
}

public struct postAddNotesSlideRequest: Codable {

    /** Add new notes slide. */
    public var name: String

    /** Add new notes slide. */
    public var slideIndex: Int

    /** Add new notes slide. */
    public var dto: NotesSlide

    /** Add new notes slide. */
    public var password: String

    /** Add new notes slide. */
    public var folder: String

    /** Add new notes slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, dto: NotesSlide, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postCopyLayoutSlideFromSourcePresentationRequest: Codable {

    /** Copy layoutSlide from source presentation. */
    public var name: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFrom: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFromPosition: Int

    /** Copy layoutSlide from source presentation. */
    public var cloneFromPassword: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFromStorage: String

    /** Copy layoutSlide from source presentation. */
    public var password: String

    /** Copy layoutSlide from source presentation. */
    public var folder: String

    /** Copy layoutSlide from source presentation. */
    public var storage: String

    public init(name: String, cloneFrom: String, cloneFromPosition: Int, cloneFromPassword: String, cloneFromStorage: String, password: String, folder: String, storage: String) {
        self.name = name
        self.cloneFrom = cloneFrom
        self.cloneFromPosition = cloneFromPosition
        self.cloneFromPassword = cloneFromPassword
        self.cloneFromStorage = cloneFromStorage
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postCopyMasterSlideFromSourcePresentationRequest: Codable {

    /** Copy masterSlide from source presentation. */
    public var name: String

    /** Copy masterSlide from source presentation. */
    public var cloneFrom: String

    /** Copy masterSlide from source presentation. */
    public var cloneFromPosition: Int

    /** Copy masterSlide from source presentation. */
    public var cloneFromPassword: String

    /** Copy masterSlide from source presentation. */
    public var cloneFromStorage: String

    /** Copy masterSlide from source presentation. */
    public var applyToAll: Bool

    /** Copy masterSlide from source presentation. */
    public var password: String

    /** Copy masterSlide from source presentation. */
    public var folder: String

    /** Copy masterSlide from source presentation. */
    public var storage: String

    public init(name: String, cloneFrom: String, cloneFromPosition: Int, cloneFromPassword: String, cloneFromStorage: String, applyToAll: Bool, password: String, folder: String, storage: String) {
        self.name = name
        self.cloneFrom = cloneFrom
        self.cloneFromPosition = cloneFromPosition
        self.cloneFromPassword = cloneFromPassword
        self.cloneFromStorage = cloneFromStorage
        self.applyToAll = applyToAll
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postNotesSlideAddNewParagraphRequest: Codable {

    /** Creates new paragraph. */
    public var name: String

    /** Creates new paragraph. */
    public var slideIndex: Int

    /** Creates new paragraph. */
    public var path: String

    /** Creates new paragraph. */
    public var shapeIndex: Int

    /** Creates new paragraph. */
    public var dto: Paragraph

    /** Creates new paragraph. */
    public var password: String

    /** Creates new paragraph. */
    public var folder: String

    /** Creates new paragraph. */
    public var storage: String

    /** Creates new paragraph. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: Paragraph, password: String, folder: String, storage: String, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct postNotesSlideAddNewPortionRequest: Codable {

    /** Creates new portion. */
    public var name: String

    /** Creates new portion. */
    public var slideIndex: Int

    /** Creates new portion. */
    public var path: String

    /** Creates new portion. */
    public var shapeIndex: Int

    /** Creates new portion. */
    public var paragraphIndex: Int

    /** Creates new portion. */
    public var dto: Portion

    /** Creates new portion. */
    public var password: String

    /** Creates new portion. */
    public var folder: String

    /** Creates new portion. */
    public var storage: String

    /** Creates new portion. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Portion, password: String, folder: String, storage: String, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct postNotesSlideAddNewShapeRequest: Codable {

    /** Create new shape. */
    public var name: String

    /** Create new shape. */
    public var slideIndex: Int

    /** Create new shape. */
    public var path: String

    /** Create new shape. */
    public var dto: ShapeBase

    /** Create new shape. */
    public var password: String

    /** Create new shape. */
    public var folder: String

    /** Create new shape. */
    public var storage: String

    /** Create new shape. */
    public var shapeToClone: Int?

    /** Create new shape. */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, dto: ShapeBase, password: String, folder: String, storage: String, shapeToClone: Int, position: Int) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.shapeToClone = shapeToClone
        self.position = position
    }
}

public struct postNotesSlideShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var path: String

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double

    /** Render shape to specified picture format. */
    public var scaleY: Double

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, options: IShapeExportOptions, password: String, folder: String, storage: String, scaleX: Double, scaleY: Double, bounds: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct postPresentationMergeRequest: Codable {

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var name: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var request: PresentationsMergeRequest

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var password: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var storage: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var folder: String

    public init(name: String, request: PresentationsMergeRequest, password: String, storage: String, folder: String) {
        self.name = name
        self.request = request
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct postShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var path: String

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double

    /** Render shape to specified picture format. */
    public var scaleY: Double

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, options: IShapeExportOptions, password: String, folder: String, storage: String, scaleX: Double, scaleY: Double, bounds: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct postSlideAnimationEffectRequest: Codable {

    /** Add an effect to slide animation. */
    public var name: String

    /** Add an effect to slide animation. */
    public var slideIndex: Int

    /** Add an effect to slide animation. */
    public var effect: Effect

    /** Add an effect to slide animation. */
    public var password: String

    /** Add an effect to slide animation. */
    public var folder: String

    /** Add an effect to slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, effect: Effect, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlideAnimationInteractiveSequenceRequest: Codable {

    /** Set slide animation. */
    public var name: String

    /** Set slide animation. */
    public var slideIndex: Int

    /** Set slide animation. */
    public var sequence: InteractiveSequence

    /** Set slide animation. */
    public var password: String

    /** Set slide animation. */
    public var folder: String

    /** Set slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequence: InteractiveSequence, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.sequence = sequence
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Add an animation effect to a slide interactive sequence. */
    public var name: String

    /** Add an animation effect to a slide interactive sequence. */
    public var slideIndex: Int

    /** Add an animation effect to a slide interactive sequence. */
    public var sequenceIndex: Int

    /** Add an animation effect to a slide interactive sequence. */
    public var effect: Effect

    /** Add an animation effect to a slide interactive sequence. */
    public var password: String

    /** Add an animation effect to a slide interactive sequence. */
    public var folder: String

    /** Add an animation effect to a slide interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effect: Effect, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlideSaveAsRequest: Codable {

    /** Save a slide to a specified format. */
    public var name: String

    /** Save a slide to a specified format. */
    public var slideIndex: Int

    /** Save a slide to a specified format. */
    public var format: String

    /** Save a slide to a specified format. */
    public var options: ExportOptions

    /** Save a slide to a specified format. */
    public var width: Int?

    /** Save a slide to a specified format. */
    public var height: Int?

    /** Save a slide to a specified format. */
    public var password: String

    /** Save a slide to a specified format. */
    public var folder: String

    /** Save a slide to a specified format. */
    public var storage: String

    /** Save a slide to a specified format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, options: ExportOptions, width: Int, height: Int, password: String, folder: String, storage: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.options = options
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct postSlidesAddRequest: Codable {

    /** Create a slide. */
    public var name: String

    /** Create a slide. */
    public var position: Int?

    /** Create a slide. */
    public var password: String

    /** Create a slide. */
    public var folder: String

    /** Create a slide. */
    public var storage: String

    /** Create a slide. */
    public var layoutAlias: String

    public init(name: String, position: Int, password: String, folder: String, storage: String, layoutAlias: String) {
        self.name = name
        self.position = position
        self.password = password
        self.folder = folder
        self.storage = storage
        self.layoutAlias = layoutAlias
    }
}

public struct postSlidesConvertRequest: Codable {

    /** Convert presentation from request content to format specified. */
    public var format: String

    /** Convert presentation from request content to format specified. */
    public var document: Data

    /** Convert presentation from request content to format specified. */
    public var password: String

    /** Convert presentation from request content to format specified. */
    public var fontsFolder: String

    public init(format: String, document: Data, password: String, fontsFolder: String) {
        self.format = format
        self.document = document
        self.password = password
        self.fontsFolder = fontsFolder
    }
}

public struct postSlidesCopyRequest: Codable {

    /** Copy a slide from the current or another presentation. */
    public var name: String

    /** Copy a slide from the current or another presentation. */
    public var slideToCopy: Int

    /** Copy a slide from the current or another presentation. */
    public var position: Int?

    /** Copy a slide from the current or another presentation. */
    public var source: String

    /** Copy a slide from the current or another presentation. */
    public var sourcePassword: String

    /** Copy a slide from the current or another presentation. */
    public var sourceStorage: String

    /** Copy a slide from the current or another presentation. */
    public var password: String

    /** Copy a slide from the current or another presentation. */
    public var folder: String

    /** Copy a slide from the current or another presentation. */
    public var storage: String

    public init(name: String, slideToCopy: Int, position: Int, source: String, sourcePassword: String, sourceStorage: String, password: String, folder: String, storage: String) {
        self.name = name
        self.slideToCopy = slideToCopy
        self.position = position
        self.source = source
        self.sourcePassword = sourcePassword
        self.sourceStorage = sourceStorage
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesDocumentRequest: Codable {

    /** Create a presentation. */
    public var name: String

    /** Create a presentation. */
    public var data: Data

    /** Create a presentation. */
    public var inputPassword: String

    /** Create a presentation. */
    public var password: String

    /** Create a presentation. */
    public var storage: String

    /** Create a presentation. */
    public var folder: String

    public init(name: String, data: Data, inputPassword: String, password: String, storage: String, folder: String) {
        self.name = name
        self.data = data
        self.inputPassword = inputPassword
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct postSlidesDocumentFromHtmlRequest: Codable {

    /** Create presentation document from html. */
    public var name: String

    /** Create presentation document from html. */
    public var html: String

    /** Create presentation document from html. */
    public var password: String

    /** Create presentation document from html. */
    public var storage: String

    /** Create presentation document from html. */
    public var folder: String

    public init(name: String, html: String, password: String, storage: String, folder: String) {
        self.name = name
        self.html = html
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct postSlidesDocumentFromSourceRequest: Codable {

    /** Create a presentation from an existing source. */
    public var name: String

    /** Create a presentation from an existing source. */
    public var sourcePath: String

    /** Create a presentation from an existing source. */
    public var sourcePassword: String

    /** Create a presentation from an existing source. */
    public var sourceStorage: String

    /** Create a presentation from an existing source. */
    public var password: String

    /** Create a presentation from an existing source. */
    public var storage: String

    /** Create a presentation from an existing source. */
    public var folder: String

    public init(name: String, sourcePath: String, sourcePassword: String, sourceStorage: String, password: String, storage: String, folder: String) {
        self.name = name
        self.sourcePath = sourcePath
        self.sourcePassword = sourcePassword
        self.sourceStorage = sourceStorage
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct postSlidesDocumentFromTemplateRequest: Codable {

    /** Create a presentation. */
    public var name: String

    /** Create a presentation. */
    public var templatePath: String

    /** Create a presentation. */
    public var data: String

    /** Create a presentation. */
    public var templatePassword: String

    /** Create a presentation. */
    public var templateStorage: String

    /** Create a presentation. */
    public var isImageDataEmbedded: Bool

    /** Create a presentation. */
    public var password: String

    /** Create a presentation. */
    public var storage: String

    /** Create a presentation. */
    public var folder: String

    public init(name: String, templatePath: String, data: String, templatePassword: String, templateStorage: String, isImageDataEmbedded: Bool, password: String, storage: String, folder: String) {
        self.name = name
        self.templatePath = templatePath
        self.data = data
        self.templatePassword = templatePassword
        self.templateStorage = templateStorage
        self.isImageDataEmbedded = isImageDataEmbedded
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct postSlidesPipelineRequest: Codable {

    /** Performs slides pipeline. */
    public var pipeline: Pipeline

    public init(pipeline: Pipeline) {
        self.pipeline = pipeline
    }
}

public struct postSlidesPresentationReplaceTextRequest: Codable {

    /** Replace text with a new value. */
    public var name: String

    /** Replace text with a new value. */
    public var oldValue: String

    /** Replace text with a new value. */
    public var newValue: String

    /** Replace text with a new value. */
    public var ignoreCase: Bool

    /** Replace text with a new value. */
    public var password: String

    /** Replace text with a new value. */
    public var folder: String

    /** Replace text with a new value. */
    public var storage: String

    public init(name: String, oldValue: String, newValue: String, ignoreCase: Bool, password: String, folder: String, storage: String) {
        self.name = name
        self.oldValue = oldValue
        self.newValue = newValue
        self.ignoreCase = ignoreCase
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesReorderRequest: Codable {

    /** Reorder presentation slide position. */
    public var name: String

    /** Reorder presentation slide position. */
    public var slideIndex: Int

    /** Reorder presentation slide position. */
    public var newPosition: Int

    /** Reorder presentation slide position. */
    public var password: String

    /** Reorder presentation slide position. */
    public var folder: String

    /** Reorder presentation slide position. */
    public var storage: String

    public init(name: String, slideIndex: Int, newPosition: Int, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.newPosition = newPosition
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesReorderManyRequest: Codable {

    /** Reorder presentation slides positions. */
    public var name: String

    /** Reorder presentation slides positions. */
    public var oldPositions: [Int]

    /** Reorder presentation slides positions. */
    public var newPositions: [Int]

    /** Reorder presentation slides positions. */
    public var password: String

    /** Reorder presentation slides positions. */
    public var folder: String

    /** Reorder presentation slides positions. */
    public var storage: String

    public init(name: String, oldPositions: [Int], newPositions: [Int], password: String, folder: String, storage: String) {
        self.name = name
        self.oldPositions = oldPositions
        self.newPositions = newPositions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesSaveAsRequest: Codable {

    /** Save a presentation to a specified format. */
    public var name: String

    /** Save a presentation to a specified format. */
    public var format: String

    /** Save a presentation to a specified format. */
    public var options: ExportOptions

    /** Save a presentation to a specified format. */
    public var password: String

    /** Save a presentation to a specified format. */
    public var storage: String

    /** Save a presentation to a specified format. */
    public var folder: String

    /** Save a presentation to a specified format. */
    public var fontsFolder: String

    public init(name: String, format: String, options: ExportOptions, password: String, storage: String, folder: String, fontsFolder: String) {
        self.name = name
        self.format = format
        self.options = options
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct postSlidesSetDocumentPropertiesRequest: Codable {

    /** Set document properties. */
    public var name: String

    /** Set document properties. */
    public var properties: DocumentProperties

    /** Set document properties. */
    public var password: String

    /** Set document properties. */
    public var folder: String

    /** Set document properties. */
    public var storage: String

    public init(name: String, properties: DocumentProperties, password: String, folder: String, storage: String) {
        self.name = name
        self.properties = properties
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesSlideReplaceTextRequest: Codable {

    /** Replace text with a new value. */
    public var name: String

    /** Replace text with a new value. */
    public var slideIndex: Int

    /** Replace text with a new value. */
    public var oldValue: String

    /** Replace text with a new value. */
    public var newValue: String

    /** Replace text with a new value. */
    public var ignoreCase: Bool

    /** Replace text with a new value. */
    public var password: String

    /** Replace text with a new value. */
    public var folder: String

    /** Replace text with a new value. */
    public var storage: String

    public init(name: String, slideIndex: Int, oldValue: String, newValue: String, ignoreCase: Bool, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.oldValue = oldValue
        self.newValue = newValue
        self.ignoreCase = ignoreCase
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct postSlidesSplitRequest: Codable {

    /** Splitting presentations. Create one image per slide. */
    public var name: String

    /** Splitting presentations. Create one image per slide. */
    public var options: ExportOptions

    /** Splitting presentations. Create one image per slide. */
    public var format: String

    /** Splitting presentations. Create one image per slide. */
    public var width: Int?

    /** Splitting presentations. Create one image per slide. */
    public var height: Int?

    /** Splitting presentations. Create one image per slide. */
    public var to: Int?

    /** Splitting presentations. Create one image per slide. */
    public var from: Int?

    /** Splitting presentations. Create one image per slide. */
    public var destFolder: String

    /** Splitting presentations. Create one image per slide. */
    public var password: String

    /** Splitting presentations. Create one image per slide. */
    public var storage: String

    /** Splitting presentations. Create one image per slide. */
    public var folder: String

    /** Splitting presentations. Create one image per slide. */
    public var fontsFolder: String

    public init(name: String, options: ExportOptions, format: String, width: Int, height: Int, to: Int, from: Int, destFolder: String, password: String, storage: String, folder: String, fontsFolder: String) {
        self.name = name
        self.options = options
        self.format = format
        self.width = width
        self.height = height
        self.to = to
        self.from = from
        self.destFolder = destFolder
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct putLayoutSlideRequest: Codable {

    /** Update a layoutSlide. */
    public var name: String

    /** Update a layoutSlide. */
    public var slideIndex: Int

    /** Update a layoutSlide. */
    public var slideDto: LayoutSlide

    /** Update a layoutSlide. */
    public var password: String

    /** Update a layoutSlide. */
    public var folder: String

    /** Update a layoutSlide. */
    public var storage: String

    public init(name: String, slideIndex: Int, slideDto: LayoutSlide, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.slideDto = slideDto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putNotesSlideShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var path: String

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var outPath: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double

    /** Render shape to specified picture format. */
    public var scaleY: Double

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, outPath: String, options: IShapeExportOptions, password: String, folder: String, storage: String, scaleX: Double, scaleY: Double, bounds: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct putPresentationMergeRequest: Codable {

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var name: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var request: OrderedMergeRequest

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var password: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var storage: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var folder: String

    public init(name: String, request: OrderedMergeRequest, password: String, storage: String, folder: String) {
        self.name = name
        self.request = request
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct putSetParagraphPortionPropertiesRequest: Codable {

    /** Update portion properties. */
    public var name: String

    /** Update portion properties. */
    public var slideIndex: Int

    /** Update portion properties. */
    public var path: String

    /** Update portion properties. */
    public var shapeIndex: Int

    /** Update portion properties. */
    public var paragraphIndex: Int

    /** Update portion properties. */
    public var portionIndex: Int

    /** Update portion properties. */
    public var dto: Portion

    /** Update portion properties. */
    public var password: String

    /** Update portion properties. */
    public var folder: String

    /** Update portion properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, dto: Portion, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSetParagraphPropertiesRequest: Codable {

    /** Update paragraph properties. */
    public var name: String

    /** Update paragraph properties. */
    public var slideIndex: Int

    /** Update paragraph properties. */
    public var path: String

    /** Update paragraph properties. */
    public var shapeIndex: Int

    /** Update paragraph properties. */
    public var paragraphIndex: Int

    /** Update paragraph properties. */
    public var dto: Paragraph

    /** Update paragraph properties. */
    public var password: String

    /** Update paragraph properties. */
    public var folder: String

    /** Update paragraph properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Paragraph, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var path: String

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var outPath: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double

    /** Render shape to specified picture format. */
    public var scaleY: Double

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, outPath: String, options: IShapeExportOptions, password: String, folder: String, storage: String, scaleX: Double, scaleY: Double, bounds: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct putSlideAnimationRequest: Codable {

    /** Set slide animation. */
    public var name: String

    /** Set slide animation. */
    public var slideIndex: Int

    /** Set slide animation. */
    public var animation: SlideAnimation

    /** Set slide animation. */
    public var password: String

    /** Set slide animation. */
    public var folder: String

    /** Set slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, animation: SlideAnimation, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.animation = animation
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlideAnimationEffectRequest: Codable {

    /** Modify an animation effect for a slide. */
    public var name: String

    /** Modify an animation effect for a slide. */
    public var slideIndex: Int

    /** Modify an animation effect for a slide. */
    public var effectIndex: Int

    /** Modify an animation effect for a slide. */
    public var effect: Effect

    /** Modify an animation effect for a slide. */
    public var password: String

    /** Modify an animation effect for a slide. */
    public var folder: String

    /** Modify an animation effect for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, effectIndex: Int, effect: Effect, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.effectIndex = effectIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Modify an animation effect for a slide interactive sequence. */
    public var name: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var slideIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var sequenceIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var effectIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var effect: Effect

    /** Modify an animation effect for a slide interactive sequence. */
    public var password: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var folder: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effectIndex: Int, effect: Effect, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effectIndex = effectIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlideSaveAsRequest: Codable {

    /** Save a slide to a specified format. */
    public var name: String

    /** Save a slide to a specified format. */
    public var slideIndex: Int

    /** Save a slide to a specified format. */
    public var format: String

    /** Save a slide to a specified format. */
    public var outPath: String

    /** Save a slide to a specified format. */
    public var options: ExportOptions

    /** Save a slide to a specified format. */
    public var width: Int?

    /** Save a slide to a specified format. */
    public var height: Int?

    /** Save a slide to a specified format. */
    public var password: String

    /** Save a slide to a specified format. */
    public var folder: String

    /** Save a slide to a specified format. */
    public var storage: String

    /** Save a slide to a specified format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, outPath: String, options: ExportOptions, width: Int, height: Int, password: String, folder: String, storage: String, fontsFolder: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct putSlideShapeInfoRequest: Codable {

    /** Update shape properties. */
    public var name: String

    /** Update shape properties. */
    public var slideIndex: Int

    /** Update shape properties. */
    public var path: String

    /** Update shape properties. */
    public var shapeIndex: Int

    /** Update shape properties. */
    public var dto: ShapeBase

    /** Update shape properties. */
    public var password: String

    /** Update shape properties. */
    public var folder: String

    /** Update shape properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: ShapeBase, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlidesConvertRequest: Codable {

    /** Convert presentation from request content to format specified. */
    public var format: String

    /** Convert presentation from request content to format specified. */
    public var outPath: String

    /** Convert presentation from request content to format specified. */
    public var document: Data

    /** Convert presentation from request content to format specified. */
    public var password: String

    /** Convert presentation from request content to format specified. */
    public var fontsFolder: String

    public init(format: String, outPath: String, document: Data, password: String, fontsFolder: String) {
        self.format = format
        self.outPath = outPath
        self.document = document
        self.password = password
        self.fontsFolder = fontsFolder
    }
}

public struct putSlidesDocumentFromHtmlRequest: Codable {

    /** Update presentation document from html. */
    public var name: String

    /** Update presentation document from html. */
    public var html: String

    /** Update presentation document from html. */
    public var password: String

    /** Update presentation document from html. */
    public var storage: String

    /** Update presentation document from html. */
    public var folder: String

    public init(name: String, html: String, password: String, storage: String, folder: String) {
        self.name = name
        self.html = html
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct putSlidesSaveAsRequest: Codable {

    /** Save a presentation to a specified format. */
    public var name: String

    /** Save a presentation to a specified format. */
    public var outPath: String

    /** Save a presentation to a specified format. */
    public var format: String

    /** Save a presentation to a specified format. */
    public var options: ExportOptions

    /** Save a presentation to a specified format. */
    public var password: String

    /** Save a presentation to a specified format. */
    public var storage: String

    /** Save a presentation to a specified format. */
    public var folder: String

    /** Save a presentation to a specified format. */
    public var fontsFolder: String

    public init(name: String, outPath: String, format: String, options: ExportOptions, password: String, storage: String, folder: String, fontsFolder: String) {
        self.name = name
        self.outPath = outPath
        self.format = format
        self.options = options
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct putSlidesSetDocumentPropertyRequest: Codable {

    /** Set document property. */
    public var name: String

    /** Set document property. */
    public var propertyName: String

    /** Set document property. */
    public var property: DocumentProperty

    /** Set document property. */
    public var password: String

    /** Set document property. */
    public var folder: String

    /** Set document property. */
    public var storage: String

    public init(name: String, propertyName: String, property: DocumentProperty, password: String, folder: String, storage: String) {
        self.name = name
        self.propertyName = propertyName
        self.property = property
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlidesSlideRequest: Codable {

    /** Update a slide. */
    public var name: String

    /** Update a slide. */
    public var slideIndex: Int

    /** Update a slide. */
    public var slideDto: Slide

    /** Update a slide. */
    public var password: String

    /** Update a slide. */
    public var folder: String

    /** Update a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, slideDto: Slide, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.slideDto = slideDto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putSlidesSlideBackgroundRequest: Codable {

    /** Set background for a slide. */
    public var name: String

    /** Set background for a slide. */
    public var slideIndex: Int

    /** Set background for a slide. */
    public var background: SlideBackground

    /** Set background for a slide. */
    public var folder: String

    /** Set background for a slide. */
    public var password: String

    /** Set background for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, background: SlideBackground, folder: String, password: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.background = background
        self.folder = folder
        self.password = password
        self.storage = storage
    }
}

public struct putSlidesSlideBackgroundColorRequest: Codable {

    /** Set background color for a slide. */
    public var name: String

    /** Set background color for a slide. */
    public var slideIndex: Int

    /** Set background color for a slide. */
    public var color: String

    /** Set background color for a slide. */
    public var folder: String

    /** Set background color for a slide. */
    public var password: String

    /** Set background color for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, color: String, folder: String, password: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.color = color
        self.folder = folder
        self.password = password
        self.storage = storage
    }
}

public struct putSlidesSlideSizeRequest: Codable {

    /** Set slide size for a presentation. */
    public var name: String

    /** Set slide size for a presentation. */
    public var password: String

    /** Set slide size for a presentation. */
    public var storage: String

    /** Set slide size for a presentation. */
    public var folder: String

    /** Set slide size for a presentation. */
    public var width: Int?

    /** Set slide size for a presentation. */
    public var height: Int?

    /** Set slide size for a presentation. */
    public var sizeType: String

    /** Set slide size for a presentation. */
    public var scaleType: String

    public init(name: String, password: String, storage: String, folder: String, width: Int, height: Int, sizeType: String, scaleType: String) {
        self.name = name
        self.password = password
        self.storage = storage
        self.folder = folder
        self.width = width
        self.height = height
        self.sizeType = sizeType
        self.scaleType = scaleType
    }
}

public struct putUpdateNotesSlideRequest: Codable {

    /** Update notes slide properties. */
    public var name: String

    /** Update notes slide properties. */
    public var slideIndex: Int

    /** Update notes slide properties. */
    public var dto: NotesSlide

    /** Update notes slide properties. */
    public var password: String

    /** Update notes slide properties. */
    public var folder: String

    /** Update notes slide properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, dto: NotesSlide, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putUpdateNotesSlideShapeRequest: Codable {

    /** Update shape properties. */
    public var name: String

    /** Update shape properties. */
    public var slideIndex: Int

    /** Update shape properties. */
    public var path: String

    /** Update shape properties. */
    public var shapeIndex: Int

    /** Update shape properties. */
    public var dto: ShapeBase

    /** Update shape properties. */
    public var password: String

    /** Update shape properties. */
    public var folder: String

    /** Update shape properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: ShapeBase, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putUpdateNotesSlideShapeParagraphRequest: Codable {

    /** Update paragraph properties. */
    public var name: String

    /** Update paragraph properties. */
    public var slideIndex: Int

    /** Update paragraph properties. */
    public var path: String

    /** Update paragraph properties. */
    public var shapeIndex: Int

    /** Update paragraph properties. */
    public var paragraphIndex: Int

    /** Update paragraph properties. */
    public var dto: Paragraph

    /** Update paragraph properties. */
    public var password: String

    /** Update paragraph properties. */
    public var folder: String

    /** Update paragraph properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Paragraph, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct putUpdateNotesSlideShapePortionRequest: Codable {

    /** Update portion properties. */
    public var name: String

    /** Update portion properties. */
    public var slideIndex: Int

    /** Update portion properties. */
    public var path: String

    /** Update portion properties. */
    public var shapeIndex: Int

    /** Update portion properties. */
    public var paragraphIndex: Int

    /** Update portion properties. */
    public var portionIndex: Int

    /** Update portion properties. */
    public var dto: Portion

    /** Update portion properties. */
    public var password: String

    /** Update portion properties. */
    public var folder: String

    /** Update portion properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, dto: Portion, password: String, folder: String, storage: String) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct storageExistsRequest: Codable {

    /** Check if storage exists */
    public var storageName: String

    public init(storageName: String) {
        self.storageName = storageName
    }
}

public struct uploadFileRequest: Codable {

    /** Upload file */
    public var path: String

    /** Upload file */
    public var file: Data

    /** Upload file */
    public var storageName: String

    public init(path: String, file: Data, storageName: String) {
        self.path = path
        self.file = file
        self.storageName = storageName
    }
}
