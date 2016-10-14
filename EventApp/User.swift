
import Foundation
import UIKit

class User {
    
    var _ID:String = "";
    var ID: String{
        set(id){
            self._ID = id
        }
        get{
            return self._ID
        }
    }
    var _Name: String = "";
    var Name: String{
        set(name){
            self._Name = name
        }
        get{
            return self._Name
        }
    }
    var _Picture: UIImage = UIImage();
    var Picture: UIImage {
        set(image){
            self._Picture = image
        }
        get{
            return self._Picture
        }
    }
    var _FacebookID:String="";
    var FacebookID: String{
        set(fBID){
            self._FacebookID = fBID
        }
        get{
            return self._FacebookID
        }
    }
    var _FacebookEmail:String="";
    var FacebookEmail: String {
        set(fBEmail){
            self._FacebookEmail = fBEmail
        }
        get{
            return self._FacebookEmail
        }
    }
    var _GoogleID:String="";
    var GoogleID: String {
        set(gID){
            self._GoogleID = gID
        }
        get{
            return self._GoogleID
        }
    }
    var _GoogleEmail:String="";
    var GoogleEmail: String{
        set(gMail){
            self._GoogleEmail = gMail
        }
        get{
            return self._GoogleEmail
        }
    }
    
    init(){}
    
    init(ID: String, name: String, picture: UIImage, facebookID: String, facebookEmail: String, googleID: String, googleEmail: String) {
        self.ID = ID;
        Name = name;
        Picture = picture;
        FacebookID = facebookID;
        FacebookEmail = facebookEmail;
        GoogleID = googleID;
        GoogleEmail = googleEmail;
    }

}
