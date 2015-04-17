//
//  ViewController.swift
//  UIImagePikerController
//
//  Created by iStudents on 4/17/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import MobileCoreServices
import AssetsLibrary

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    var imagePicker: UIImagePickerController!
    var newMedia: Bool?
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        dismissViewControllerAnimated(true, completion: nil)
        
        let mediaType = info[UIImagePickerControllerMediaType] as NSString
        if (mediaType.isEqualToString(kUTTypeImage as NSString)) {
            let image = info[UIImagePickerControllerOriginalImage] as UIImage
            imageView.image = image
            
            if (newMedia == true) {
                UIImageWriteToSavedPhotosAlbum(image, self, "image: didFinishSavingWithError: contextInfo", nil)
            }
        }
    }
    
    @IBAction func mountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        self.imageView.image = newImage
    }
    @IBAction func library(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMedia = false
    }
    @IBAction func takePhoto(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        //presentedViewController(imagePicker,animated: true, completion: nil)
        presentViewController(imagePicker, animated: true, completion: nil)
        newMedia = true
    }
    @IBOutlet var imageView: UIImageView!
    
    func image(image: UIImage, didFinishSavingWithError error:NSErrorPointer, contextInfo:UnsafePointer<Void>){
        
        if(error != nil){
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.Alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
    }
    
    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage {
        //1
        let sepia = CIFilter(name:"CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        //2
        let random = CIFilter(name:"CIRandomGenerator")
        
        //3
        let lighten = CIFilter(name:"CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        //4
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        //5
        let composite = CIFilter(name:"CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        //6
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        //7
        return vignette.outputImage
    }
    
    func logAllfilters(){
        let propoties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(propoties)
        for filterName: AnyObject in propoties{
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

