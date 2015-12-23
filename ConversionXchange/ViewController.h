//Copyright 2015  SipCo Systems
//
//http://sipcosystems.com
//
//Created by  Narender Reddy
//
//This file is part of Xchange.  And I  ( narender)  have coded this small utility during my internship at SipCo Systems . Feedback and suggestions are welcome( you can use github issues).
//
//
//
//Xchange is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//Xchange is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License along with Xchange. If not, see http://www.gnu.org/licenses/.

// This application uses free.currencyconverterapi.com  API , you can change  it to any other API provider



#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate,NSURLConnectionDelegate,NSURLConnectionDataDelegate>


@property (strong, nonatomic)NSArray*fromArray;

@property (strong, nonatomic)NSArray*toArray;

@property (strong, nonatomic)NSArray*exchangeRate;


@property (strong, nonatomic) IBOutlet UIPickerView *pickerView1;

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView2;

@property (strong, nonatomic) IBOutlet UITextField *textAmount;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (IBAction)convertBtn:(id)sender;



@property (strong, nonatomic) IBOutlet UIScrollView *scrollerView;


@property (strong, nonatomic) IBOutlet UILabel *lableText;
@property (strong, nonatomic) IBOutlet UILabel *labelText2;




@end

