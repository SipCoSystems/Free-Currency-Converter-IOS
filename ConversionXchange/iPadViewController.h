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


#import "ViewController.h"

@interface iPadViewController : ViewController<UIPickerViewDataSource,UIPickerViewDelegate,NSURLConnectionDelegate,NSURLConnectionDataDelegate>


@property (strong, nonatomic)NSArray*fromArray1;

@property (strong, nonatomic)NSArray*toArray1;



@property (strong, nonatomic) IBOutlet UIPickerView *pickerView3;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView4;

@property (strong, nonatomic) IBOutlet UITextField *textAmount1;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner1;


- (IBAction)convertBtn1:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelText1;






@end
