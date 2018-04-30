@interface WGWidgetAttributionView : UITextView
@end

%hook WGWidgetAttributionView
-(id)initWithWidgetAttributedString: (NSAttributedString *)string {
    return %orig(nil);
}
%end