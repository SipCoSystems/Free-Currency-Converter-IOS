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


#import "iPadViewController.h"

@interface iPadViewController ()

@end

@implementation iPadViewController
@synthesize textAmount1,labelText1;

NSString *toCountry1  = @"";
NSString *fromCountry1  = @"";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ textAmount1  setKeyboardType:UIKeyboardTypeNumberPad];
    
    _fromArray1 =[NSArray arrayWithObjects:@"Afghanistan(AFN)",@"Åland Islands(EUR)",@"Albania(ALL)",@"Algeria(DZD)",@"American Samoa(USD)",@"Andorra(EUR)",@"Angola(AOA)",@"Anguilla(XCD)",@"Antigua and Barbuda(XCD)",@"Argentina(ARS)",@"Armenia(AMD)",@"Aruba(AWG)",@"Australia(AUD)",@"Austria(EUR)",@"Azerbaijan(AZN)",@"Bahamas(BSD)",@"Bahrain(BHD)",@"Bangladesh(BDT)",@"Barbados(BBD)",@"Belarus(BYR)",
                  @"Belgium(EUR)",@"Belize(BZD)",@"Benin(XOF)",@"Bermuda(BMD)",@"Bhutan(BTN)",@"Bosnia and Herzegovina(BAM)",
                  @"Botswana(BWP)",@"Bouvet Island(NOK)",@"Brazil(BRL)",@"British Indian Ocean Territory(USD)",@"Brunei Darussalam(BND)",@"Bulgaria(BGN)",@"Burkina Faso(XOF)",@"Burundi(BIF)",@"Cabo Verde(CVE)",@"Cambodia(KHR)",
                  @"Cameroon(XAF)",@"Canada(CAD)",@"Cayman Islands(KYD)",@"Central African Republic(XAF)",
                  @"Chad(XAF)",@"Chile(CLP)",@"China(CNY)",@"Christmas Island(AUD)",@"Cocos (Keeling) Islands(AUD)",@"Colombia(COP)",@"Comoros(KMF)",@"Congo(XAF)",@"CongoDemocratic Republic of the(CDF)",@"Cook Islands(NZD)",@"Costa Rica(CRC)",@"Côte D'Ivoire( XOF)",@"Croatia(HRK)",@"Cuba(CUP)",@"Curaço(ANG)",@"Cyprus(CYP)",@"CzechRepublic(CZK)",@"Denmark(DKK)",@"Djibouti(DJF)",@"Dominica(XCD)",@"Dominican Republic(DOP)",@"Ecuador(USD)",@"Egypt(EGP)",@"ElSalvador(SVC)",@"Equatorial Guinea(XAF)",@"Eritrea(ERN)",@"Estonia(EUR)",@"Ethiopia(ETB)",@"European Economic and Monetary Union area(EUR)",@"France(EUR)",@"Gambia(GMD)",@"Georgia(GEL)",@"Germany(EUR)",@"Hong Kong(HKD)",@"Hungary(HUF)",@"India(INR)",@"Indonesia(IDR)",@"Iran, Islamic Republic Of(IRR)",@"Iraq(IQD)",@"Italy(EUR)",@"Japan(JPY)",@"Korea, Republic of(KRW)",@"Malaysia(MYR)",@"Mexico(MXN)",@"Myanmar(MMK)",@"Nepal(NPR)",@"Netherlands(EUR)",@"New Zealand(NZD)",@"Oman(OMN)",@"Poland(PLN)",@"Russian Federation(RUB)",@"Saudi Arabia(SAR)",@"Singapore(SGD)",@"South Africa(ZAR)",@"Spain(EUR)",@"Switzerland(CHF)",@"Taiwan, Province of China(TWD)",@"Turkey(TRY)",@"United States(USD)",@"Uganda(UGX)",@"Ukraine(UAH)",@"United Arab Emirates(AED)",@"United Kingdom(GBP)",@"Uruguay(UYU)",@"Zimbabwe(ZWD)",nil];
    
    
    _toArray1=[NSArray arrayWithObjects:@"Afghanistan(AFN)",@"Åland Islands(EUR)",@"Albania(ALL)",@"Algeria(DZD)",@"American Samoa(USD)",@"Andorra(EUR)",@"Angola(AOA)",@"Anguilla(XCD)",@"Antigua and Barbuda(XCD)",@"Argentina(ARS)",@"Armenia(AMD)",@"Aruba(AWG)",@"Australia(AUD)",@"Austria(EUR)",@"Azerbaijan(AZN)",@"Bahamas(BSD)",@"Bahrain(BHD)",@"Bangladesh(BDT)",@"Barbados(BBD)",@"Belarus(BYR)",@"Belgium(EUR)",@"Belize(BZD)",@"Benin(XOF)",@"Bermuda(BMD)",@"Bhutan(BTN)",@"Bosnia and Herzegovina(BAM)",
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
    
    
    if ([pickerView isEqual:_pickerView3]) {
        return [_fromArray1 count];
    }
    
    else if
        ([pickerView isEqual:_pickerView4]) {
            return [_toArray1 count];
        }
    //return _fromArray.count;
    return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if ([pickerView isEqual:_pickerView3])
    {
        return [_fromArray1 objectAtIndex:row];
    }
    if ([pickerView isEqual:_pickerView4])
        
    {
        return [_toArray1 objectAtIndex:row];
    }
    return nil;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    
    if ([pickerView isEqual:_pickerView3]) {
        // NSString *toCountry =  [_toArray objectAtIndex:row];
        fromCountry1 =  [_fromArray1 objectAtIndex:row];
        // lableText.text = fromCountry;
        
        
    }
    
    if ([pickerView isEqual:_pickerView4]) {
        toCountry1 =  [_toArray1 objectAtIndex:row];
        //NSString *fromCountry =  [_fromArray objectAtIndex:row];
        // labelText2.text = toCountry;
        
    }
    
        else
            
            
        {
            [[self lableText] setTextColor:[UIColor blackColor]];
            [[self lableText] setFont:[UIFont fontWithName:@"System" size:10]];
            labelText1.text = [NSString stringWithFormat:@"%@", @"Please Select Country"];
            
        }
        
 
        
    
    


}
-(void)dismissKeyboard {
    [textAmount1  resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)convertBtn1:(id)sender {
    
    
    [self.spinner1 startAnimating];
    
    [_spinner1 performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:5.0];
    
    
    
    
    
    
    if (([textAmount1.text  isEqual: @""]) )
        
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
        [self presentViewController:myAlertController animated:YES completion:nil];   }
    
    
    
    
    else
        
        
    {
        
        //NSString *string=lableText.text;
        
        
        if (!([fromCountry1  isEqual: @""]) && !([toCountry1  isEqual: @""]) )
        {
            
            
            NSString *string3 = fromCountry1;
            NSRange searchFromRange3 = [string3 rangeOfString:@"("];
            NSRange searchToRange3 = [string3 rangeOfString:@")"];
            
            NSString *substring1 = [string3 substringWithRange:NSMakeRange(searchFromRange3.location+searchFromRange3.length, searchToRange3.location-searchFromRange3.location-searchFromRange3.length)];
            
            
            NSString *from_currency1 = [substring1 stringByReplacingOccurrencesOfString:@"" withString:@""];
            
            if (self.textAmount1.text != nil && ![self.textAmount1.text isEqualToString:@"%"]){
                
                               
            }
                NSString *string4= toCountry1 ;
                NSRange searchFromRange4 = [string4 rangeOfString:@"("];
                NSRange searchToRange4 = [string4 rangeOfString:@")"];
                
                NSString *substring4 = [string4 substringWithRange:NSMakeRange(searchFromRange4.location+searchFromRange4.length, searchToRange4.location-searchFromRange4.location-searchFromRange4.length)];
                
                NSString *to_currency1= [substring4 stringByReplacingOccurrencesOfString:@"\342\200\206" withString:@""];
                
                // NSLog(@"subs=%@",substring2);
                
                NSString *comine_country1 = [from_currency1 stringByAppendingString:@"_"];
                NSString *finalcountry1 =  [comine_country1 stringByAppendingString:to_currency1];
                
                
                
                
                NSString *strURL=[NSString stringWithFormat:@"http://free.currencyconverterapi.com/api/v3/convert?q=%@&compact=y",finalcountry1];
                
                
                NSURL *url = [NSURL URLWithString:strURL];
                
                
                //NSURL *url = [NSURL URLWithString:@"http://free.currencyconverterapi.com/api/v3/convert?q=USD_INR&compact=y"];
                
                
                //sreekanth
                
                //download and create the NSDictionary
                
                
                NSData *weatherData = [NSData dataWithContentsOfURL:url];
                NSError *error = nil;
                NSDictionary *weatherObject = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&error];
                
                //access the nested NSDictionary with nested calls
                NSString *metar = [[weatherObject valueForKey:finalcountry1] valueForKey:@"val"];
                
                int amnt = 0;
                
                amnt = [textAmount1.text intValue];
                
                double metard = [metar doubleValue];
                
                double finalvalue1 = metard * amnt;
                
                labelText1.text = [NSString stringWithFormat:@"%f", finalvalue1];
                
            }
            
            
            else
                
                
            {
                
                
                [[self lableText] setTextColor:[UIColor blackColor]];
                [[self lableText] setFont:[UIFont fontWithName:@"System" size:10]];
                labelText1.text = [NSString stringWithFormat:@"%@", @"Please Select Country"];
                
        
            }
            
            
            
        }
    }
    
   
    
    
    
    
    
    
    
    
    
    

@end
