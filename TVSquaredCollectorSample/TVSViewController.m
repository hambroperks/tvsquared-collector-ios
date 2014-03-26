#import "TVSViewController.h"
#import "TVSquaredCollector.h"

@interface TVSViewController ()

@end

@implementation TVSViewController {
    TVSquaredCollector *_collector;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _collector = [[TVSquaredCollector alloc] initTracker:@"collector.tvsquared.com" siteid:@"1"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)track:(id)sender {
    [_collector track];
}

- (IBAction)trackUser:(id)sender {
    _collector.userId = _txt_userid.text;
    [_collector track];
}

- (IBAction)trackAction:(id)sender {
    [_collector track:_txt_actionname.text product:_txt_product.text orderid:_txt_orderid.text revenue:[_txt_revenue.text floatValue] promocode:_txt_promocode.text];
}
@end
