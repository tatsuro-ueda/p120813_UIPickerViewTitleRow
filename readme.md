At first, make interface with IB.

![ss](http://farm9.staticflickr.com/8297/7772269034_f0069ba57b.jpg)

Then, write code.

	-(NSString *)pickerView:(UIPickerView *)pickerView 
	            titleForRow:(NSInteger)row 
	           forComponent:(NSInteger)component
	{
	    return [[[dic objectForKey:restaurantName] objectForKey:@"name"] objectAtIndex:row];
	}
	
	-(NSInteger)pickerView:(UIPickerView *)pickerView 
	numberOfRowsInComponent:(NSInteger)component
	{
	    return [[[dic objectForKey:restaurantName] objectForKey:@"name"] count];
	}
	
	- (IBAction)change:(id)sender {
	    if ([restaurantName isEqualToString:@"restaurant1"]) {
	        restaurantName = @"restaurant2";
	    }
	    else {
	        restaurantName = @"restaurant1";
	    }
	    [picker reloadAllComponents];
	}

Now run the program. This is first view.

![ss](http://farm9.staticflickr.com/8443/7772291506_e8b3e40627.jpg)

When you push button, the picker components change.

![ss](http://farm8.staticflickr.com/7249/7772291598_f605c425c2.jpg)