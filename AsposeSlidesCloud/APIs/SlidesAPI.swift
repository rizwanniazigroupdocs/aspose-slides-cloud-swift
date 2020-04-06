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



open class SlidesAPI {
    /**
     Copy file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFile(request: copyFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy file
     - PUT /slides/storage/file/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func copyFileWithRequestBuilder(request: copyFileRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/file/copy/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Copy folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFolder(request: copyFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy folder
     - PUT /slides/storage/folder/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func copyFolderWithRequestBuilder(request: copyFolderRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/folder/copy/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create the folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFolder(request: createFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Create the folder
     - PUT /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func createFolderWithRequestBuilder(request: createFolderRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFile(request: deleteFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete file
     - DELETE /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFileWithRequestBuilder(request: deleteFileRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFolder(request: deleteFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete folder
     - DELETE /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFolderWithRequestBuilder(request: deleteFolderRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "recursive": request.recursive
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlide(request: deleteNotesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        deleteNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove notes slide.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func deleteNotesSlideWithRequestBuilder(request: deleteNotesSlideRequest) -> RequestBuilder<Slide> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraph(request: deleteNotesSlideParagraphRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphWithRequestBuilder(request: deleteNotesSlideParagraphRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of paragraphs.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideParagraphs(request: deleteNotesSlideParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteNotesSlideParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteNotesSlideParagraphsWithRequestBuilder(request: deleteNotesSlideParagraphsRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": request.paragraphs, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortion(request: deleteNotesSlidePortionRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionWithRequestBuilder(request: deleteNotesSlidePortionRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of portions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlidePortions(request: deleteNotesSlidePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteNotesSlidePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deleteNotesSlidePortionsWithRequestBuilder(request: deleteNotesSlidePortionsRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": request.portions, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShape(request: deleteNotesSlideShapeRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapeWithRequestBuilder(request: deleteNotesSlideShapeRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of shapes.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlideShapes(request: deleteNotesSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteNotesSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteNotesSlideShapesWithRequestBuilder(request: deleteNotesSlideShapesRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": request.shapes, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraph(request: deleteParagraphRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphWithRequestBuilder(request: deleteParagraphRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of paragraphs.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraphs(request: deleteParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphsWithRequestBuilder(request: deleteParagraphsRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": request.paragraphs, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortion(request: deletePortionRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionWithRequestBuilder(request: deletePortionRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of portions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortions(request: deletePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionsWithRequestBuilder(request: deletePortionsRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": request.portions, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove animation from a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimation(request: deleteSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove animation from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationWithRequestBuilder(request: deleteSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove an effect from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationEffect(request: deleteSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationEffectWithRequestBuilder(request: deleteSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove an interactive sequence from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequence(request: deleteSlideAnimationInteractiveSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an interactive sequence from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequenceWithRequestBuilder(request: deleteSlideAnimationInteractiveSequenceRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove an effect from slide animation interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequenceEffect(request: deleteSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation interactive sequence.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: deleteSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Clear all interactive sequences from slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationInteractiveSequences(request: deleteSlideAnimationInteractiveSequencesRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationInteractiveSequencesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear all interactive sequences from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationInteractiveSequencesWithRequestBuilder(request: deleteSlideAnimationInteractiveSequencesRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Clear main sequence in slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideAnimationMainSequence(request: deleteSlideAnimationMainSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSlideAnimationMainSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear main sequence in slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSlideAnimationMainSequenceWithRequestBuilder(request: deleteSlideAnimationMainSequenceRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a presentation slide by index.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideByIndex(request: deleteSlideByIndexRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlideByIndexWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation slide by index.
     - DELETE /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlideByIndexWithRequestBuilder(request: deleteSlideByIndexRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideShape(request: deleteSlideShapeRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideShapeWithRequestBuilder(request: deleteSlideShapeRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a range of shapes.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideShapes(request: deleteSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSlideShapesWithRequestBuilder(request: deleteSlideShapesRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": request.shapes, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete presentation slides.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesCleanSlidesList(request: deleteSlidesCleanSlidesListRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlidesCleanSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation slides.
     - DELETE /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlidesCleanSlidesListWithRequestBuilder(request: deleteSlidesCleanSlidesListRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slides": request.slides, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Clean document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesDocumentProperties(request: deleteSlidesDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteSlidesDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clean document properties.
     - DELETE /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteSlidesDocumentPropertiesWithRequestBuilder(request: deleteSlidesDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesDocumentProperty(request: deleteSlidesDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteSlidesDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete document property.
     - DELETE /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteSlidesDocumentPropertyWithRequestBuilder(request: deleteSlidesDocumentPropertyRequest) -> RequestBuilder<DocumentProperties> {
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove background from a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlidesSlideBackground(request: deleteSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        deleteSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove background from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func deleteSlidesSlideBackgroundWithRequestBuilder(request: deleteSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadFile(request: downloadFileRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Download file
     - GET /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func downloadFileWithRequestBuilder(request: downloadFileRequest) -> RequestBuilder<Data> {
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get disc usage
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDiscUsage(request: getDiscUsageRequest, completion: @escaping ((_ data: DiscUsage?,_ error: Error?) -> Void)) {
        getDiscUsageWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get disc usage
     - GET /slides/storage/disc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "UsedSize" : 0,
  "TotalSize" : 6
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DiscUsage> 
     */
    open class func getDiscUsageWithRequestBuilder(request: getDiscUsageRequest) -> RequestBuilder<DiscUsage> {
        let path = "/slides/storage/disc"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<DiscUsage>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get file versions
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileVersions(request: getFileVersionsRequest, completion: @escaping ((_ data: FileVersions?,_ error: Error?) -> Void)) {
        getFileVersionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get file versions
     - GET /slides/storage/version/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ "", "" ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FileVersions> 
     */
    open class func getFileVersionsWithRequestBuilder(request: getFileVersionsRequest) -> RequestBuilder<FileVersions> {
        var path = "/slides/storage/version/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FileVersions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all files and folders within a folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFilesList(request: getFilesListRequest, completion: @escaping ((_ data: FilesList?,_ error: Error?) -> Void)) {
        getFilesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all files and folders within a folder
     - GET /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  }, {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  } ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FilesList> 
     */
    open class func getFilesListWithRequestBuilder(request: getFilesListRequest) -> RequestBuilder<FilesList> {
        var path = "/slides/storage/folder/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FilesList>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation layoutSlide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlide(request: getLayoutSlideRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        getLayoutSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlide info.
     - GET /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func getLayoutSlideWithRequestBuilder(request: getLayoutSlideRequest) -> RequestBuilder<LayoutSlide> {
        var path = "/slides/{name}/layoutSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation layoutSlides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlidesList(request: getLayoutSlidesListRequest, completion: @escaping ((_ data: LayoutSlides?,_ error: Error?) -> Void)) {
        getLayoutSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlides info.
     - GET /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlides> 
     */
    open class func getLayoutSlidesListWithRequestBuilder(request: getLayoutSlidesListRequest) -> RequestBuilder<LayoutSlides> {
        var path = "/slides/{name}/layoutSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<LayoutSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation masterSlide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlide(request: getMasterSlideRequest, completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        getMasterSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlide info.
     - GET /slides/{name}/masterSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlide> 
     */
    open class func getMasterSlideWithRequestBuilder(request: getMasterSlideRequest) -> RequestBuilder<MasterSlide> {
        var path = "/slides/{name}/masterSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation masterSlides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlidesList(request: getMasterSlidesListRequest, completion: @escaping ((_ data: MasterSlides?,_ error: Error?) -> Void)) {
        getMasterSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlides info.
     - GET /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlides> 
     */
    open class func getMasterSlidesListWithRequestBuilder(request: getMasterSlidesListRequest) -> RequestBuilder<MasterSlides> {
        var path = "/slides/{name}/masterSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<MasterSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read notes slide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlide(request: getNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideWithRequestBuilder(request: getNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide shape info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShape(request: getNotesSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getNotesSlideShapeWithRequestBuilder(request: getNotesSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read shape paragraph info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapeParagraph(request: getNotesSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getNotesSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func getNotesSlideShapeParagraphWithRequestBuilder(request: getNotesSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read shape paragraphs info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapeParagraphs(request: getNotesSlideShapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getNotesSlideShapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getNotesSlideShapeParagraphsWithRequestBuilder(request: getNotesSlideShapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read paragraph portion info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapePortion(request: getNotesSlideShapePortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getNotesSlideShapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func getNotesSlideShapePortionWithRequestBuilder(request: getNotesSlideShapePortionRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read paragraph portions info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapePortions(request: getNotesSlideShapePortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getNotesSlideShapePortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func getNotesSlideShapePortionsWithRequestBuilder(request: getNotesSlideShapePortionsRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide shapes info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideShapes(request: getNotesSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getNotesSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func getNotesSlideShapesWithRequestBuilder(request: getNotesSlideShapesRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    public enum Format_getNotesSlideWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Convert notes slide to the specified image format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideWithFormat(request: getNotesSlideWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getNotesSlideWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getNotesSlideWithFormatWithRequestBuilder(request: getNotesSlideWithFormatRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read paragraph portion info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphPortion(request: getParagraphPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getParagraphPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func getParagraphPortionWithRequestBuilder(request: getParagraphPortionRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read paragraph portions info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphPortions(request: getParagraphPortionsRequest, completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getParagraphPortionsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portions> 
     */
    open class func getParagraphPortionsWithRequestBuilder(request: getParagraphPortionsRequest) -> RequestBuilder<Portions> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide animation effects.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideAnimation(request: getSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        getSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide animation effects.
     - GET /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func getSlideAnimationWithRequestBuilder(request: getSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": request.shapeIndex.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide shape info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShape(request: getSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getSlideShapeWithRequestBuilder(request: getSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read shape paragraph info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapeParagraph(request: getSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func getSlideShapeParagraphWithRequestBuilder(request: getSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read shape paragraphs info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapeParagraphs(request: getSlideShapeParagraphsRequest, completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getSlideShapeParagraphsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getSlideShapeParagraphsWithRequestBuilder(request: getSlideShapeParagraphsRequest) -> RequestBuilder<Paragraphs> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide shapes info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShapes(request: getSlideShapesRequest, completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getSlideShapesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Shapes> 
     */
    open class func getSlideShapesWithRequestBuilder(request: getSlideShapesRequest) -> RequestBuilder<Shapes> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get API info.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesApiInfo(completion: @escaping ((_ data: ApiInfo?,_ error: Error?) -> Void)) {
        getSlidesApiInfoWithRequestBuilder().executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get API info.
     - GET /slides/info
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Version" : "Version",
  "Name" : "Name"
}}]

     - returns: RequestBuilder<ApiInfo> 
     */
    open class func getSlidesApiInfoWithRequestBuilder() -> RequestBuilder<ApiInfo> {
        let path = "/slides/info"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiInfo>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocument(request: getSlidesDocumentRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getSlidesDocumentWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation info.
     - GET /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func getSlidesDocumentWithRequestBuilder(request: getSlidesDocumentRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocumentProperties(request: getSlidesDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        getSlidesDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func getSlidesDocumentPropertiesWithRequestBuilder(request: getSlidesDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesDocumentProperty(request: getSlidesDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        getSlidesDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document property.
     - GET /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func getSlidesDocumentPropertyWithRequestBuilder(request: getSlidesDocumentPropertyRequest) -> RequestBuilder<DocumentProperty> {
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get image binary data.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImageWithDefaultFormat(request: getSlidesImageWithDefaultFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getSlidesImageWithDefaultFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - GET /slides/{name}/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getSlidesImageWithDefaultFormatWithRequestBuilder(request: getSlidesImageWithDefaultFormatRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/images/{index}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "index", request.index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    public enum Format_getSlidesImageWithFormat: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get image in specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImageWithFormat(request: getSlidesImageWithFormatRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getSlidesImageWithFormatWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - GET /slides/{name}/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func getSlidesImageWithFormatWithRequestBuilder(request: getSlidesImageWithFormatRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/images/{index}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "index", request.index)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation images info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesImages(request: getSlidesImagesRequest, completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlidesImagesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation images info.
     - GET /slides/{name}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Images> 
     */
    open class func getSlidesImagesWithRequestBuilder(request: getSlidesImagesRequest) -> RequestBuilder<Images> {
        var path = "/slides/{name}/images"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide placeholder info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPlaceholder(request: getSlidesPlaceholderRequest, completion: @escaping ((_ data: Placeholder?,_ error: Error?) -> Void)) {
        getSlidesPlaceholderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholder info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Placeholder> 
     */
    open class func getSlidesPlaceholderWithRequestBuilder(request: getSlidesPlaceholderRequest) -> RequestBuilder<Placeholder> {
        var path = "/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "placeholderIndex", request.placeholderIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Placeholder>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide placeholders info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPlaceholders(request: getSlidesPlaceholdersRequest, completion: @escaping ((_ data: Placeholders?,_ error: Error?) -> Void)) {
        getSlidesPlaceholdersWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholders info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Placeholders> 
     */
    open class func getSlidesPlaceholdersWithRequestBuilder(request: getSlidesPlaceholdersRequest) -> RequestBuilder<Placeholders> {
        var path = "/slides/{name}/slides/{slideIndex}/placeholders"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Placeholders>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract presentation text items.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesPresentationTextItems(request: getSlidesPresentationTextItemsRequest, completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlidesPresentationTextItemsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract presentation text items.
     - GET /slides/{name}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlidesPresentationTextItemsWithRequestBuilder(request: getSlidesPresentationTextItemsRequest) -> RequestBuilder<TextItems> {
        var path = "/slides/{name}/textItems"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": request.withEmpty, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation slide info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlide(request: getSlidesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        getSlidesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide info.
     - GET /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func getSlidesSlideWithRequestBuilder(request: getSlidesSlideRequest) -> RequestBuilder<Slide> {
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide background info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideBackground(request: getSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        getSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide background info.
     - GET /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func getSlidesSlideBackgroundWithRequestBuilder(request: getSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation slide comments.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideComments(request: getSlidesSlideCommentsRequest, completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        getSlidesSlideCommentsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide comments.
     - GET /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideComments> 
     */
    open class func getSlidesSlideCommentsWithRequestBuilder(request: getSlidesSlideCommentsRequest) -> RequestBuilder<SlideComments> {
        var path = "/slides/{name}/slides/{slideIndex}/comments"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide images info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideImages(request: getSlidesSlideImagesRequest, completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlidesSlideImagesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide images info.
     - GET /slides/{name}/slides/{slideIndex}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Images> 
     */
    open class func getSlidesSlideImagesWithRequestBuilder(request: getSlidesSlideImagesRequest) -> RequestBuilder<Images> {
        var path = "/slides/{name}/slides/{slideIndex}/images"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract slide text items.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlideTextItems(request: getSlidesSlideTextItemsRequest, completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlidesSlideTextItemsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract slide text items.
     - GET /slides/{name}/slides/{slideIndex}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlidesSlideTextItemsWithRequestBuilder(request: getSlidesSlideTextItemsRequest) -> RequestBuilder<TextItems> {
        var path = "/slides/{name}/slides/{slideIndex}/textItems"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": request.withEmpty, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read presentation slides info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesSlidesList(request: getSlidesSlidesListRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        getSlidesSlidesListWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slides info.
     - GET /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func getSlidesSlidesListWithRequestBuilder(request: getSlidesSlidesListRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide theme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesTheme(request: getSlidesThemeRequest, completion: @escaping ((_ data: Theme?,_ error: Error?) -> Void)) {
        getSlidesThemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme info.
     - GET /slides/{name}/slides/{slideIndex}/theme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Theme> 
     */
    open class func getSlidesThemeWithRequestBuilder(request: getSlidesThemeRequest) -> RequestBuilder<Theme> {
        var path = "/slides/{name}/slides/{slideIndex}/theme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Theme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide theme color scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeColorScheme(request: getSlidesThemeColorSchemeRequest, completion: @escaping ((_ data: ColorScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeColorSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme color scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/colorScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ColorScheme> 
     */
    open class func getSlidesThemeColorSchemeWithRequestBuilder(request: getSlidesThemeColorSchemeRequest) -> RequestBuilder<ColorScheme> {
        var path = "/slides/{name}/slides/{slideIndex}/theme/colorScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<ColorScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide theme font scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeFontScheme(request: getSlidesThemeFontSchemeRequest, completion: @escaping ((_ data: FontScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeFontSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme font scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/fontScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FontScheme> 
     */
    open class func getSlidesThemeFontSchemeWithRequestBuilder(request: getSlidesThemeFontSchemeRequest) -> RequestBuilder<FontScheme> {
        var path = "/slides/{name}/slides/{slideIndex}/theme/fontScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<FontScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read slide theme format scheme info.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlidesThemeFormatScheme(request: getSlidesThemeFormatSchemeRequest, completion: @escaping ((_ data: FormatScheme?,_ error: Error?) -> Void)) {
        getSlidesThemeFormatSchemeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme format scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/formatScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FormatScheme> 
     */
    open class func getSlidesThemeFormatSchemeWithRequestBuilder(request: getSlidesThemeFormatSchemeRequest) -> RequestBuilder<FormatScheme> {
        var path = "/slides/{name}/slides/{slideIndex}/theme/formatScheme"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<FormatScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFile(request: moveFileRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move file
     - PUT /slides/storage/file/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func moveFileWithRequestBuilder(request: moveFileRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/file/move/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move folder
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFolder(request: moveFolderRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFolderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move folder
     - PUT /slides/storage/folder/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func moveFolderWithRequestBuilder(request: moveFolderRequest) -> RequestBuilder<Void> {
        var path = "/slides/storage/folder/move/{srcPath}"
        path = APIHelper.replacePathParameter(path, "srcPath", request.srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": request.destPath, 
            "srcStorageName": request.srcStorageName, 
            "destStorageName": request.destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Check if file or folder exists
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objectExists(request: objectExistsRequest, completion: @escaping ((_ data: ObjectExist?,_ error: Error?) -> Void)) {
        objectExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if file or folder exists
     - GET /slides/storage/exist/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true,
  "IsFolder" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ObjectExist> 
     */
    open class func objectExistsWithRequestBuilder(request: objectExistsRequest) -> RequestBuilder<ObjectExist> {
        var path = "/slides/storage/exist/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName, 
            "versionId": request.versionId
        ])

        let requestBuilder: RequestBuilder<ObjectExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates new paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewParagraph(request: postAddNewParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        postAddNewParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func postAddNewParagraphWithRequestBuilder(request: postAddNewParagraphRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates new portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewPortion(request: postAddNewPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        postAddNewPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func postAddNewPortionWithRequestBuilder(request: postAddNewPortionRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create new shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNewShape(request: postAddNewShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        postAddNewShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func postAddNewShapeWithRequestBuilder(request: postAddNewShapeRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "shapeToClone": request.shapeToClone?.encodeToJSON(), 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add new notes slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAddNotesSlide(request: postAddNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        postAddNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add new notes slide.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func postAddNotesSlideWithRequestBuilder(request: postAddNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Copy layoutSlide from source presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCopyLayoutSlideFromSourcePresentation(request: postCopyLayoutSlideFromSourcePresentationRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        postCopyLayoutSlideFromSourcePresentationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy layoutSlide from source presentation.
     - POST /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func postCopyLayoutSlideFromSourcePresentationWithRequestBuilder(request: postCopyLayoutSlideFromSourcePresentationRequest) -> RequestBuilder<LayoutSlide> {
        var path = "/slides/{name}/layoutSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": request.cloneFrom, 
            "cloneFromPosition": request.cloneFromPosition.encodeToJSON(), 
            "cloneFromPassword": request.cloneFromPassword, 
            "cloneFromStorage": request.cloneFromStorage, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Copy masterSlide from source presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCopyMasterSlideFromSourcePresentation(request: postCopyMasterSlideFromSourcePresentationRequest, completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        postCopyMasterSlideFromSourcePresentationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy masterSlide from source presentation.
     - POST /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<MasterSlide> 
     */
    open class func postCopyMasterSlideFromSourcePresentationWithRequestBuilder(request: postCopyMasterSlideFromSourcePresentationRequest) -> RequestBuilder<MasterSlide> {
        var path = "/slides/{name}/masterSlides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": request.cloneFrom, 
            "cloneFromPosition": request.cloneFromPosition.encodeToJSON(), 
            "cloneFromPassword": request.cloneFromPassword, 
            "cloneFromStorage": request.cloneFromStorage, 
            "applyToAll": request.applyToAll, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Creates new paragraph.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewParagraph(request: postNotesSlideAddNewParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func postNotesSlideAddNewParagraphWithRequestBuilder(request: postNotesSlideAddNewParagraphRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates new portion.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewPortion(request: postNotesSlideAddNewPortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewPortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func postNotesSlideAddNewPortionWithRequestBuilder(request: postNotesSlideAddNewPortionRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create new shape.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideAddNewShape(request: postNotesSlideAddNewShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        postNotesSlideAddNewShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func postNotesSlideAddNewShapeWithRequestBuilder(request: postNotesSlideAddNewShapeRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "shapeToClone": request.shapeToClone?.encodeToJSON(), 
            "position": request.position?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postNotesSlideShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postNotesSlideShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postNotesSlideShapeSaveAs(request: postNotesSlideShapeSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postNotesSlideShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postNotesSlideShapeSaveAsWithRequestBuilder(request: postNotesSlideShapeSaveAsRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Merge the presentation with other presentations specified in the request parameter.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPresentationMerge(request: postPresentationMergeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postPresentationMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations specified in the request parameter.
     - POST /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postPresentationMergeWithRequestBuilder(request: postPresentationMergeRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/merge"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.request)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_postShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postShapeSaveAs(request: postShapeSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postShapeSaveAsWithRequestBuilder(request: postShapeSaveAsRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add an effect to slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationEffect(request: postSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an effect to slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationEffectWithRequestBuilder(request: postSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationInteractiveSequence(request: postSlideAnimationInteractiveSequenceRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationInteractiveSequenceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationInteractiveSequenceWithRequestBuilder(request: postSlideAnimationInteractiveSequenceRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.sequence)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add an animation effect to a slide interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideAnimationInteractiveSequenceEffect(request: postSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        postSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an animation effect to a slide interactive sequence.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func postSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: postSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlideSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlideSaveAs(request: postSlideSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlideSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlideSaveAsWithRequestBuilder(request: postSlideSaveAsRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/slides/{slideIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesAdd(request: postSlidesAddRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesAddWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a slide.
     - POST /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesAddWithRequestBuilder(request: postSlidesAddRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": request.position?.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "layoutAlias": request.layoutAlias
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesConvert: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
    }

    /**
     Convert presentation from request content to format specified.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesConvert(request: postSlidesConvertRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesConvertWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert presentation from request content to format specified.
     - POST /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesConvertWithRequestBuilder(request: postSlidesConvertRequest) -> RequestBuilder<Data> {
        var path = "/slides/convert/{format}"
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Copy a slide from the current or another presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesCopy(request: postSlidesCopyRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesCopyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy a slide from the current or another presentation.
     - POST /slides/{name}/slides/copy
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesCopyWithRequestBuilder(request: postSlidesCopyRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides/copy"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slideToCopy": request.slideToCopy.encodeToJSON(), 
            "position": request.position?.encodeToJSON(), 
            "source": request.source, 
            "sourcePassword": request.sourcePassword, 
            "sourceStorage": request.sourceStorage, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocument(request: postSlidesDocumentRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentWithRequestBuilder(request: postSlidesDocumentRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "inputPassword": request.inputPassword, 
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create presentation document from html.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromHtml(request: postSlidesDocumentFromHtmlRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromHtmlWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from html.
     - POST /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromHtmlWithRequestBuilder(request: postSlidesDocumentFromHtmlRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/fromHtml"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.html)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a presentation from an existing source.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromSource(request: postSlidesDocumentFromSourceRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromSourceWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation from an existing source.
     - POST /slides/{name}/fromSource
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromSourceWithRequestBuilder(request: postSlidesDocumentFromSourceRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/fromSource"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourcePath": request.sourcePath, 
            "sourcePassword": request.sourcePassword, 
            "sourceStorage": request.sourceStorage, 
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesDocumentFromTemplate(request: postSlidesDocumentFromTemplateRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        postSlidesDocumentFromTemplateWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}/fromTemplate
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func postSlidesDocumentFromTemplateWithRequestBuilder(request: postSlidesDocumentFromTemplateRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/fromTemplate"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.data)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "templatePath": request.templatePath, 
            "templatePassword": request.templatePassword, 
            "templateStorage": request.templateStorage, 
            "isImageDataEmbedded": request.isImageDataEmbedded, 
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Performs slides pipeline.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesPipeline(request: postSlidesPipelineRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesPipelineWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Performs slides pipeline.
     - POST /slides/pipeline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesPipelineWithRequestBuilder(request: postSlidesPipelineRequest) -> RequestBuilder<Data> {
        let path = "/slides/pipeline"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.pipeline)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesPresentationReplaceText(request: postSlidesPresentationReplaceTextRequest, completion: @escaping ((_ data: DocumentReplaceResult?,_ error: Error?) -> Void)) {
        postSlidesPresentationReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentReplaceResult> 
     */
    open class func postSlidesPresentationReplaceTextWithRequestBuilder(request: postSlidesPresentationReplaceTextRequest) -> RequestBuilder<DocumentReplaceResult> {
        var path = "/slides/{name}/replaceText"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": request.oldValue, 
            "newValue": request.newValue, 
            "ignoreCase": request.ignoreCase, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Reorder presentation slide position.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesReorder(request: postSlidesReorderRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesReorderWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slide position.
     - POST /slides/{name}/slides/{slideIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesReorderWithRequestBuilder(request: postSlidesReorderRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides/{slideIndex}/move"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": request.newPosition.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Reorder presentation slides positions.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesReorderMany(request: postSlidesReorderManyRequest, completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        postSlidesReorderManyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slides positions.
     - POST /slides/{name}/slides/reorder
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slides> 
     */
    open class func postSlidesReorderManyWithRequestBuilder(request: postSlidesReorderManyRequest) -> RequestBuilder<Slides> {
        var path = "/slides/{name}/slides/reorder"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldPositions": request.oldPositions, 
            "newPositions": request.newPositions, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesSaveAs: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
    }

    /**
     Save a presentation to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSaveAs(request: postSlidesSaveAsRequest, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        postSlidesSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a presentation to a specified format.
     - POST /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Data> 
     */
    open class func postSlidesSaveAsWithRequestBuilder(request: postSlidesSaveAsRequest) -> RequestBuilder<Data> {
        var path = "/slides/{name}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set document properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSetDocumentProperties(request: postSlidesSetDocumentPropertiesRequest, completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        postSlidesSetDocumentPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document properties.
     - POST /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func postSlidesSetDocumentPropertiesWithRequestBuilder(request: postSlidesSetDocumentPropertiesRequest) -> RequestBuilder<DocumentProperties> {
        var path = "/slides/{name}/documentproperties"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.properties)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace text with a new value.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSlideReplaceText(request: postSlidesSlideReplaceTextRequest, completion: @escaping ((_ data: SlideReplaceResult?,_ error: Error?) -> Void)) {
        postSlidesSlideReplaceTextWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideReplaceResult> 
     */
    open class func postSlidesSlideReplaceTextWithRequestBuilder(request: postSlidesSlideReplaceTextRequest) -> RequestBuilder<SlideReplaceResult> {
        var path = "/slides/{name}/slides/{slideIndex}/replaceText"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": request.oldValue, 
            "newValue": request.newValue, 
            "ignoreCase": request.ignoreCase, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    public enum Format_postSlidesSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
    }

    /**
     Splitting presentations. Create one image per slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSlidesSplit(request: postSlidesSplitRequest, completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        postSlidesSplitWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splitting presentations. Create one image per slide.
     - POST /slides/{name}/split
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func postSlidesSplitWithRequestBuilder(request: postSlidesSplitRequest) -> RequestBuilder<SplitDocumentResult> {
        var path = "/slides/{name}/split"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": request.format, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "to": request.to?.encodeToJSON(), 
            "from": request.from?.encodeToJSON(), 
            "destFolder": request.destFolder, 
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a layoutSlide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLayoutSlide(request: putLayoutSlideRequest, completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        putLayoutSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a layoutSlide.
     - PUT /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func putLayoutSlideWithRequestBuilder(request: putLayoutSlideRequest) -> RequestBuilder<LayoutSlide> {
        var path = "/slides/{name}/layoutSlides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.slideDto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_putNotesSlideShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putNotesSlideShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putNotesSlideShapeSaveAs(request: putNotesSlideShapeSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putNotesSlideShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putNotesSlideShapeSaveAsWithRequestBuilder(request: putNotesSlideShapeSaveAsRequest) -> RequestBuilder<Void> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPresentationMerge(request: putPresentationMergeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putPresentationMergeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - PUT /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putPresentationMergeWithRequestBuilder(request: putPresentationMergeRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/merge"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.request)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update portion properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetParagraphPortionProperties(request: putSetParagraphPortionPropertiesRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        putSetParagraphPortionPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func putSetParagraphPortionPropertiesWithRequestBuilder(request: putSetParagraphPortionPropertiesRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update paragraph properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetParagraphProperties(request: putSetParagraphPropertiesRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        putSetParagraphPropertiesWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func putSetParagraphPropertiesWithRequestBuilder(request: putSetParagraphPropertiesRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_putShapeSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_putShapeSaveAs: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putShapeSaveAs(request: putShapeSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putShapeSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putShapeSaveAsWithRequestBuilder(request: putShapeSaveAsRequest) -> RequestBuilder<Void> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "scaleX": request.scaleX, 
            "scaleY": request.scaleY, 
            "bounds": request.bounds, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set slide animation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimation(request: putSlideAnimationRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - PUT /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationWithRequestBuilder(request: putSlideAnimationRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.animation)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Modify an animation effect for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimationEffect(request: putSlideAnimationEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationEffectWithRequestBuilder(request: putSlideAnimationEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Modify an animation effect for a slide interactive sequence.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideAnimationInteractiveSequenceEffect(request: putSlideAnimationInteractiveSequenceEffectRequest, completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        putSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide interactive sequence.
     - PUT /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func putSlideAnimationInteractiveSequenceEffectWithRequestBuilder(request: putSlideAnimationInteractiveSequenceEffectRequest) -> RequestBuilder<SlideAnimation> {
        var path = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "sequenceIndex", request.sequenceIndex)
        path = APIHelper.replacePathParameter(path, "effectIndex", request.effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.effect)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlideSaveAs: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
    }

    /**
     Save a slide to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideSaveAs(request: putSlideSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlideSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlideSaveAsWithRequestBuilder(request: putSlideSaveAsRequest) -> RequestBuilder<Void> {
        var path = "/slides/{name}/slides/{slideIndex}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update shape properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlideShapeInfo(request: putSlideShapeInfoRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        putSlideShapeInfoWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func putSlideShapeInfoWithRequestBuilder(request: putSlideShapeInfoRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlidesConvert: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
    }

    /**
     Convert presentation from request content to format specified.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesConvert(request: putSlidesConvertRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlidesConvertWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert presentation from request content to format specified.
     - PUT /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlidesConvertWithRequestBuilder(request: putSlidesConvertRequest) -> RequestBuilder<Void> {
        var path = "/slides/convert/{format}"
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "password": request.password, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update presentation document from html.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesDocumentFromHtml(request: putSlidesDocumentFromHtmlRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesDocumentFromHtmlWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation document from html.
     - PUT /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesDocumentFromHtmlWithRequestBuilder(request: putSlidesDocumentFromHtmlRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/fromHtml"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.html)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter format
     */
    public enum Format_putSlidesSaveAs: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
    }

    /**
     Save a presentation to a specified format.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSaveAs(request: putSlidesSaveAsRequest, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSlidesSaveAsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a presentation to a specified format.
     - PUT /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Void> 
     */
    open class func putSlidesSaveAsWithRequestBuilder(request: putSlidesSaveAsRequest) -> RequestBuilder<Void> {
        var path = "/slides/{name}/{format}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "format", request.format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.options)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": request.outPath, 
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder, 
            "fontsFolder": request.fontsFolder
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set document property.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSetDocumentProperty(request: putSlidesSetDocumentPropertyRequest, completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        putSlidesSetDocumentPropertyWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document property.
     - PUT /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func putSlidesSetDocumentPropertyWithRequestBuilder(request: putSlidesSetDocumentPropertyRequest) -> RequestBuilder<DocumentProperty> {
        var path = "/slides/{name}/documentproperties/{propertyName}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "propertyName", request.propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.property)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlide(request: putSlidesSlideRequest, completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        putSlidesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a slide.
     - PUT /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Slide> 
     */
    open class func putSlidesSlideWithRequestBuilder(request: putSlidesSlideRequest) -> RequestBuilder<Slide> {
        var path = "/slides/{name}/slides/{slideIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.slideDto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set background for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideBackground(request: putSlidesSlideBackgroundRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        putSlidesSlideBackgroundWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func putSlidesSlideBackgroundWithRequestBuilder(request: putSlidesSlideBackgroundRequest) -> RequestBuilder<SlideBackground> {
        var path = "/slides/{name}/slides/{slideIndex}/background"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.background)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": request.folder, 
            "password": request.password, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set background color for a slide.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideBackgroundColor(request: putSlidesSlideBackgroundColorRequest, completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        putSlidesSlideBackgroundColorWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background color for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/backgroundColor
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<SlideBackground> 
     */
    open class func putSlidesSlideBackgroundColorWithRequestBuilder(request: putSlidesSlideBackgroundColorRequest) -> RequestBuilder<SlideBackground> {
        var path = "/slides/{name}/slides/{slideIndex}/backgroundColor"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "color": request.color, 
            "folder": request.folder, 
            "password": request.password, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter sizeType
     */
    public enum SizeType_putSlidesSlideSize: String { 
        case onScreen = "OnScreen"
        case letterPaper = "LetterPaper"
        case a4Paper = "A4Paper"
        case slide35mm = "Slide35mm"
        case overhead = "Overhead"
        case banner = "Banner"
        case custom = "Custom"
        case ledger = "Ledger"
        case a3Paper = "A3Paper"
        case b4IsoPaper = "B4IsoPaper"
        case b5IsoPaper = "B5IsoPaper"
        case b4JisPaper = "B4JisPaper"
        case b5JisPaper = "B5JisPaper"
        case hagakiCard = "HagakiCard"
        case onScreen16x9 = "OnScreen16x9"
        case onScreen16x10 = "OnScreen16x10"
        case widescreen = "Widescreen"
    }

    /**
     * enum for parameter scaleType
     */
    public enum ScaleType_putSlidesSlideSize: String { 
        case doNotScale = "DoNotScale"
        case ensureFit = "EnsureFit"
        case maximize = "Maximize"
    }

    /**
     Set slide size for a presentation.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSlidesSlideSize(request: putSlidesSlideSizeRequest, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        putSlidesSlideSizeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide size for a presentation.
     - PUT /slides/{name}/slideSize
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Document> 
     */
    open class func putSlidesSlideSizeWithRequestBuilder(request: putSlidesSlideSizeRequest) -> RequestBuilder<Document> {
        var path = "/slides/{name}/slideSize"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "storage": request.storage, 
            "folder": request.folder, 
            "width": request.width?.encodeToJSON(), 
            "height": request.height?.encodeToJSON(), 
            "sizeType": request.sizeType, 
            "scaleType": request.scaleType
        ])

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update notes slide properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlide(request: putUpdateNotesSlideRequest, completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update notes slide properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<NotesSlide> 
     */
    open class func putUpdateNotesSlideWithRequestBuilder(request: putUpdateNotesSlideRequest) -> RequestBuilder<NotesSlide> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update shape properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShape(request: putUpdateNotesSlideShapeRequest, completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapeWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<ShapeBase> 
     */
    open class func putUpdateNotesSlideShapeWithRequestBuilder(request: putUpdateNotesSlideShapeRequest) -> RequestBuilder<ShapeBase> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update paragraph properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShapeParagraph(request: putUpdateNotesSlideShapeParagraphRequest, completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapeParagraphWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Paragraph> 
     */
    open class func putUpdateNotesSlideShapeParagraphWithRequestBuilder(request: putUpdateNotesSlideShapeParagraphRequest) -> RequestBuilder<Paragraph> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update portion properties.
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateNotesSlideShapePortion(request: putUpdateNotesSlideShapePortionRequest, completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        putUpdateNotesSlideShapePortionWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<Portion> 
     */
    open class func putUpdateNotesSlideShapePortionWithRequestBuilder(request: putUpdateNotesSlideShapePortionRequest) -> RequestBuilder<Portion> {
        var path = "/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        path = APIHelper.replacePathParameter(path, "name", request.name)
        path = APIHelper.replacePathParameter(path, "slideIndex", request.slideIndex)
        path = APIHelper.replacePathParameter(path, "path", request.path)
        path = APIHelper.replacePathParameter(path, "shapeIndex", request.shapeIndex)
        path = APIHelper.replacePathParameter(path, "paragraphIndex", request.paragraphIndex)
        path = APIHelper.replacePathParameter(path, "portionIndex", request.portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request.dto)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": request.password, 
            "folder": request.folder, 
            "storage": request.storage
        ])

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Check if storage exists
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storageExists(request: storageExistsRequest, completion: @escaping ((_ data: StorageExist?,_ error: Error?) -> Void)) {
        storageExistsWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if storage exists
     - GET /slides/storage/{storageName}/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<StorageExist> 
     */
    open class func storageExistsWithRequestBuilder(request: storageExistsRequest) -> RequestBuilder<StorageExist> {
        var path = "/slides/storage/{storageName}/exist"
        path = APIHelper.replacePathParameter(path, "storageName", request.storageName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StorageExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Upload file
     
     - parameter request: object containing request parameters
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(request: uploadFileRequest, completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(request: request).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - PUT /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Errors" : [ {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  }, {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  } ],
  "Uploaded" : [ "Uploaded", "Uploaded" ]
}}]
     - parameter request: object containing request parameters

     - returns: RequestBuilder<FilesUploadResult> 
     */
    open class func uploadFileWithRequestBuilder(request: uploadFileRequest) -> RequestBuilder<FilesUploadResult> {
        var path = "/slides/storage/file/{path}"
        path = APIHelper.replacePathParameter(path, "path", request.path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + path
        let formParams: [String:Any?] = [
            "file": request.file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": request.storageName
        ])

        let requestBuilder: RequestBuilder<FilesUploadResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
