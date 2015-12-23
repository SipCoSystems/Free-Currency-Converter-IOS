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

@interface ViewController ()

@end



@implementation ViewController
@synthesize textAmount,lableText,labelText2,spinner;
NSString *toCountry  = @"";
NSString *fromCountry  = @"";



- (void)viewDidLoad {
	
	[ textAmount  setKeyboardType:UIKeyboardTypeNumberPad];
	
	
	
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    UIScrollView *myScroll = [[UIScrollView alloc] init];
    myScroll.frame = self.view.bounds;
    


    
    [super viewDidLoad];

    


    _fromArray= [NSMutableArray arrayWithObjects:@"Afghanistan(AFN)",@"Åland Islands(EUR)",@"Albania(ALL)",@"Algeria(DZD)",@"American Samoa(USD)",@"Andorra(EUR)",@"Angola(AOA)",@"Anguilla(XCD)",@"Antigua and Barbuda(XCD)",@"Argentina(ARS)",@"Armenia(AMD)",@"Aruba(AWG)",@"Australia(AUD)",@"Austria(EUR)",@"Azerbaijan(AZN)",@"Bahamas(BSD)",@"Bahrain(BHD)",@"Bangladesh(BDT)",@"Barbados(BBD)",@"Belarus(BYR)",
				 @"Belgium(EUR)",@"Belize(BZD)",@"Benin(XOF)",@"Bermuda(BMD)",@"Bhutan(BTN)",@"Bosnia and Herzegovina(BAM)",
                 @"Botswana(BWP)",@"Bouvet Island(NOK)",@"Brazil(BRL)",@"British Indian Ocean Territory(USD)",@"Brunei Darussalam(BND)",@"Bulgaria(BGN)",@"Burkina Faso(XOF)",@"Burundi(BIF)",@"Cabo Verde(CVE)",@"Cambodia(KHR)",
                     @"Cameroon(XAF)",@"Canada(CAD)",@"Cayman Islands(KYD)",@"Central African Republic(XAF)",
    @"Chad(XAF)",@"Chile(CLP)",@"China(CNY)",@"Christmas Island(AUD)",@"Cocos (Keeling) Islands(AUD)",@"Colombia(COP)",@"Comoros(KMF)",@"Congo(XAF)",@"CongoDemocratic Republic of the(CDF)",@"Cook Islands(NZD)",@"Costa Rica(CRC)",@"Côte D'Ivoire( XOF)",@"Croatia(HRK)",@"Cuba(CUP)",@"Curaço(ANG)",@"Cyprus(CYP)",@"CzechRepublic(CZK)",@"Denmark(DKK)",@"Djibouti(DJF)",@"Dominica(XCD)",@"Dominican Republic(DOP)",@"Ecuador(USD)",@"Egypt(EGP)",@"ElSalvador(SVC)",@"Equatorial Guinea(XAF)",@"Eritrea(ERN)",@"Estonia(EUR)",@"Ethiopia(ETB)",@"European Economic and Monetary Union area(EUR)",@"France(EUR)",@"Gambia(GMD)",@"Georgia(GEL)",@"Germany(EUR)",@"Hong Kong(HKD)",@"Hungary(HUF)",@"India(INR)",@"Indonesia(IDR)",@"Iran, Islamic Republic Of(IRR)",@"Iraq(IQD)",@"Italy(EUR)",@"Japan(JPY)",@"Korea, Republic of(KRW)",@"Malaysia(MYR)",@"Mexico(MXN)",@"Myanmar(MMK)",@"Nepal(NPR)",@"Netherlands(EUR)",@"New Zealand(NZD)",@"Oman(OMN)",@"Poland(PLN)",@"Russian Federation(RUB)",@"Saudi Arabia(SAR)",@"Singapore(SGD)",@"South Africa(ZAR)",@"Spain(EUR)",@"Switzerland(CHF)",@"Taiwan, Province of China(TWD)",@"Turkey(TRY)",@"United States(USD)",@"Uganda(UGX)",@"Ukraine(UAH)",@"United Arab Emirates(AED)",@"United Kingdom(GBP)",@"Uruguay(UYU)",@"Zimbabwe(ZWD)",nil];
    
 
    
    
	_toArray=[NSMutableArray arrayWithObjects:@"Afghanistan(AFN)",@"Åland Islands(EUR)",@"Albania(ALL)",@"Algeria(DZD)",@"American Samoa(USD)",@"Andorra(EUR)",@"Angola(AOA)",@"Anguilla(XCD)",@"Antigua and Barbuda(XCD)",@"Argentina(ARS)",@"Armenia(AMD)",@"Aruba(AWG)",@"Australia(AUD)",@"Austria(EUR)",@"Azerbaijan(AZN)",@"Bahamas(BSD)",@"Bahrain(BHD)",@"Bangladesh(BDT)",@"Barbados(BBD)",@"Belarus(BYR)",@"Belgium(EUR)",@"Belize(BZD)",@"Benin(XOF)",@"Bermuda(BMD)",@"Bhutan(BTN)",@"Bosnia and Herzegovina(BAM)",
			  @"Botswana(BWP)",@"Bouvet Island(NOK)",@"Brazil(BRL)",@"British Indian Ocean Territory(USD)",@"Brunei Darussalam(BND)",@"Bulgaria(BGN)",@"Burkina Faso(XOF)",@"Burundi(BIF)",@"Cabo Verde(CVE)",@"Cambodia(KHR)",
			  @"Cameroon(XAF)",@"Canada(CAD)",@"Cayman Islands(KYD)",@"Central African Republic(XAF)",
			  @"Chad(XAF)",@"Chile(CLP)",@"China(CNY)",@"Christmas Island(AUD)",@"Cocos (Keeling) Islands(AUD)",@"Colombia(COP)",@"Comoros(KMF)",@"Congo(XAF)",@"CongoDemocratic Republic of the(CDF)",@"Cook Islands(NZD)",@"Costa Rica(CRC)",@"Côte D'Ivoire( XOF)",@"Croatia(HRK)",@"Cuba(CUP)",@"Curaço(ANG)",@"Cyprus(CYP)",@"CzechRepublic(CZK)",@"Denmark(DKK)",@"Djibouti(DJF)",@"Dominica(XCD)",@"Dominican Republic(DOP)",@"Ecuador(USD)",@"Egypt(EGP)",@"ElSalvador(SVC)",@"Equatorial Guinea(XAF)",@"Eritrea(ERN)",@"Estonia(EUR)",@"Ethiopia(ETB)",@"European Economic and Monetary Union area(EUR)",@"France(EUR)",@"Gambia(GMD)",@"Georgia(GEL)",@"Germany(EUR)",@"Hong Kong(HKD)",@"Hungary(HUF)",@"India(INR)",@"Indonesia(IDR)",@"Iran, Islamic Republic Of(IRR)",@"Iraq(IQD)",@"Italy(EUR)",@"Japan(JPY)",@"Korea, Republic of(KRW)",@"Malaysia(MYR)",@"Mexico(MXN)",@"Myanmar(MMK)",@"Nepal(NPR)",@"Netherlands(EUR)",@"New Zealand(NZD)",@"Oman(OMN)",@"Poland(PLN)",@"Russian Federation(RUB)",@"Saudi Arabia(SAR)",@"Singapore(SGD)",@"South Africa(ZAR)",@"Spain(EUR)",@"Switzerland(CHF)",@"Taiwan, Province of China(TWD)",@"Turkey(TRY)",@"United States(USD)",@"Uganda(UGX)",@"Ukraine(UAH)",@"United Arab Emirates(AED)",@"United Kingdom(GBP)",@"Uruguay(UYU)",@"Zimbabwe(ZWD)",nil];
	


	
	
}


-(void)textFieldDidBeginEditing:(UITextField *)textField {
	
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(keyboardWillShow:)
												 name:UIKeyboardWillShowNotification
											   object:nil];
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	
    return 1;
    
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    
    if ([pickerView isEqual:_pickerView1]) {
        return [_fromArray count];
	}
    
    else if
       ([pickerView isEqual:_pickerView2]) {
            return [_toArray count];
        }
    //return _fromArray.count;
    return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if ([pickerView isEqual:_pickerView1])
    {
        return [_fromArray objectAtIndex:row];
    }
    if ([pickerView isEqual:_pickerView2])
        
    {
        return [_toArray objectAtIndex:row];
    }
    return nil;
	
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	
	

//    if ([pickerView isEqual:_pickerView1]) {
//       // NSString *toCountry =  [_toArray objectAtIndex:row];
//        fromCountry =  [_fromArray objectAtIndex:row];
//     // lableText.text = fromCountry;
//		
//        
//    }
//    
//    if ([pickerView isEqual:_pickerView2]) {
//       toCountry =  [_toArray objectAtIndex:row];
//        //NSString *fromCountry =  [_fromArray objectAtIndex:row];
// // labelText2.text = toCountry;    
//    
//		}


	
	if ([pickerView isEqual:_pickerView1]) {
		//fromCountry =  [_fromArray objectAtIndex:row];
		fromCountry=[[NSString alloc] initWithFormat:@"%@", [_fromArray objectAtIndex:row]];
		//[pickerView reloadComponent:50];
	}
	
	if ([pickerView isEqual:_pickerView2]){
		// toCountry =  [_toArray objectAtIndex:row];
		toCountry = [[NSString alloc]initWithFormat:@"%@",[_toArray objectAtIndex:row]];
		//[pickerView reloadComponent:50];
	}
	
	
	else
		
		
	{
		[[self lableText] setTextColor:[UIColor blackColor]];
		[[self lableText] setFont:[UIFont fontWithName:@"System" size:10]];
		lableText.text = [NSString stringWithFormat:@"%@", @"Please Select Country"];
		
	}


}




-(void)dismissKeyboard {
    [textAmount  resignFirstResponder];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
	
	
	
}

- (IBAction)convertBtn:(id)sender {
    

    
    
    [self.spinner startAnimating];
    
    [spinner performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:5.0];
    
    
    
    
    
   
   if (([textAmount.text  isEqual: @""]))
       
   {
       UIAlertController *myAlertController = [UIAlertController alertControllerWithTitle:@"Empty value"
                                                                                  message: @"Please enter some value in amount field"
                                                                           preferredStyle:UIAlertControllerStyleAlert                   ];
       
       //Step 2: Create a UIAlertAction that can be added to the alert
       UIAlertAction* ok = [UIAlertAction
                            actionWithTitle:@"OK"
                            style:UIAlertActionStyleDefault
                            handler:^(UIAlertAction * action)
                            {
                                //Do some thing here, eg dismiss the alertwindow
                                [myAlertController dismissViewControllerAnimated:YES completion:nil];
                                
                            }];
	   
       //Step 3: Add the UIAlertAction ok that we just created to our AlertController
       [myAlertController addAction: ok];
       
       //Step 4: Present the alert to the user
       [self presentViewController:myAlertController animated:YES completion:nil];
	   
   }

	
    if (!([fromCountry  isEqual: @""]) && !([toCountry  isEqual: @""]) )
    {
	
		
 
    NSString *string = fromCountry;
    NSRange searchFromRange = [string rangeOfString:@"("];
    NSRange searchToRange = [string rangeOfString:@")"];


		
   NSString *substring = [string substringWithRange:NSMakeRange(searchFromRange.location+searchFromRange.length, searchToRange.location-searchFromRange.location-searchFromRange.length)];
	
		
NSString *from_currency = [substring stringByReplacingOccurrencesOfString:@"" withString:@""];
    
    if (self.textAmount.text != nil && ![self.textAmount.text isEqualToString:@""]){
		
		
		
		
}
		
		
   NSString *string2= toCountry ;
    NSRange searchFromRange2 = [string2 rangeOfString:@"("];
    NSRange searchToRange2 = [string2 rangeOfString:@")"];

		
     NSString *substring2 = [string2 substringWithRange:NSMakeRange(searchFromRange2.location+searchFromRange2.length, searchToRange2.location-searchFromRange2.location-searchFromRange2.length)];
    
    NSString *to_currency= [substring2 stringByReplacingOccurrencesOfString:@"\342\200\206" withString:@""];
   
   // NSLog(@"subs=%@",substring2);

    NSString *comine_country = [from_currency stringByAppendingString:@"_"];
    NSString *finalcountry =  [comine_country stringByAppendingString:to_currency];
		
		
		
    
    NSString *strURL=[NSString stringWithFormat:@"http://free.currencyconverterapi.com/api/v3/convert?q=%@&compact=y",finalcountry];

    
    NSURL *url = [NSURL URLWithString:strURL];

		//download and create the NSDictionary
    

    NSData *weatherData = [NSData dataWithContentsOfURL:url];
    NSError *error = nil;
    NSDictionary *weatherObject = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&error];
    
    //access the nested NSDictionary with nested calls
    NSString *metar = [[weatherObject valueForKey:finalcountry] valueForKey:@"val"];
   
    int amnt = 0;
    
    amnt = [textAmount.text intValue];
    
    double metard = [metar doubleValue];
    
    double finalvalue = metard * amnt;
        
    lableText.text = [NSString stringWithFormat:@"%f", finalvalue];
	
	}
		
		
	else
	
	
	{
		
		[[self lableText] setTextColor:[UIColor blackColor]];
        [[self lableText] setFont:[UIFont fontWithName:@"System" size:10]];
	    lableText.text = [NSString stringWithFormat:@"%@", @"Please Select Country"];
        
        
	}
		


 
	}

	

    

@end
