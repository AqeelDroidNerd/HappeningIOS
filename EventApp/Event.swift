
import Foundation
import UIKit

class Event {
    
    var _ID:String="";
    var ID: String {
        set(id){
            self._ID = id
        }
        get{
            return self._ID
        }
    }
    var _Title:String="";
    var Title: String {
        set(title){
            self._Title = title
        }
        get{
            return self._Title
        }
    }
    var _Description:String="";
    var Descriptions: String{
        set(desc){
            self._Description = desc
        }
        get{
            return self._Description
        }
    }
    var _BannerPicture:UIImage = UIImage();
    var BannerPicture: UIImage {
        set(bannerPic){
            self._BannerPicture = bannerPic
        }
        get{
            return self._BannerPicture
        }
    }
    var _Type:String="";
    var Type: String{
        set(type){
            self._Type = type
        }
        get{
            return self._Type
        }
    }//Party, Conference, Meeting, etc
    var _CreatedOn:NSDate = NSDate();
    var CreatedOn: NSDate{
        set(created){
            self._CreatedOn = created
        }
        get{
            return self._CreatedOn
        }
    }
    var _EventDate:NSDate = NSDate();
    var EventDate: NSDate {
        set(eveDate){
            self._EventDate = eveDate
        }
        get{
            return self._EventDate
        }
    }
    var _Status:Bool = true;
    var Status: Bool {
        set(state){
            self._Status = state
        }
        get{
            return self._Status
        }
    } //Published, Draft, Unpublished
    var _user = User()
    var user: User{
        set(eventUser){
            self._user = eventUser
        }
        get{
            return self._user
        }
    }
    var _IsFree = true;
    var IsFree: Bool{
        set(free){
            self._IsFree = free
        }
        get{
            return self._IsFree
        }
    }
    var _NeedReservation = true;
    var NeedsReservation: Bool {
        set(reservation){
            self._NeedReservation = reservation
        }
        get{
            return self._NeedReservation
        }
    }
    var _NeedTickets = true;
    var NeedsTickets: Bool{
            set(tickets){
                self._NeedTickets = tickets
            }
            get{
                return self._NeedTickets
            }
    }
    var _GateCloseTime = "";
    var GateCloseTime: String{
        set(closeTime){
            self._GateCloseTime = closeTime
        }
        get{
            return self._GateCloseTime
        }
    }
    var _Price = "";
    var Price: String {
        set(price){
            self._Price = price
        }
        get{
            return self._Price
        }
    }
    var _Venue = "";
    var Venue: String {
        set(venue){
            self._Venue = venue
        }
        get{
            return self._Venue
        }
    }
    
    init(){}
    
    init(ID: String, title: String,descriptions: String, bannerPicture: UIImage, type: String, createdOn: NSDate, eventDate: NSDate, status: Bool, user: User, isFree: Bool, needsReservation: Bool, needsTickets: Bool, gateCloseTime: String, price: String, venue: String) {
        self.ID = ID;
        Title = title;
        Descriptions = descriptions;
        BannerPicture = bannerPicture;
        Type = type;
        CreatedOn = createdOn;
        EventDate = eventDate;
        Status = status;
        self.user = user;
        IsFree = isFree;
        NeedsReservation = needsReservation;
        NeedsTickets = needsTickets;
        GateCloseTime = gateCloseTime;
        Price = price;
        Venue = venue;
    }
}
