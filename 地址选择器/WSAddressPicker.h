//
//  WSAddressPicker.h
//  地址选择器
//
//  Created by mac on 19/11/2018.
//  Copyright © 2018 Woodsoo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WSAddressPickerDelegate <NSObject>
@optional
/** 代理方法返回省市区*/
- (void)WSAddressPickerWithProvince:(NSString *)province
                               city:(NSString *)city area:(NSString *)area;
/** 取消代理方法*/
- (void)WSAddressPickerCancleAction;

@end

@interface WSAddressPicker : UIView

/** 省 */
@property (nonatomic, strong) NSString *province;
/** 市 */
@property (nonatomic, strong) NSString *city;
/** 区 */
@property (nonatomic, strong) NSString *area;
@property (nonatomic, weak) id<WSAddressPickerDelegate> delegate;
- (void)updateAddressAtProvince:(NSString *)province city:(NSString *)city town:(NSString *)town;
/** 内容字体 */
@property (nonatomic, strong) UIFont *font;

@end

NS_ASSUME_NONNULL_END
