# Enzyme
Enzyme is a spm package for the make easier development on iOS.

## Installation
>  For the installation you just need to add the url of the project to your Swift Pakcage manager.

## DateExtension
- Inside the Enzyme package there is a Date extension which help you to check the date for the today and yesterday.

```
let stringDate = "2021-12-24"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
let date = dateFormatter.date(from: stringDate)
        
print("Is today: \(date?.isToday() ?? false)")
print("Is yesterday: \(date?.isYesterday() ?? false)")
```
## Social Media Buttons
- Enzyme package alson consist the social media buttons for the Twitter, Instagram and Facebook. The button width and height size are 40.
- For the use the Social Media button you can use Storyboard, XIB and ViewController.
- For the storyboard and xib, you need to set the button class SocialMediaButton and in the Attributes Inspector panel, you just need to declare the social media button type. 
> For now Social Media Button types are; twitter, instagram and facebook

![Social Media Butons](https://drive.google.com/file/d/1UvKOsy8zLmIVCnsiZRcKFWr1kQ0bUzvb/view?)
