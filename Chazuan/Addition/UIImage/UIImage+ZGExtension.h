//
//  UIImage+ZGExtension.h
//  Chazuan
//
//  Created by BecksZ on 2019/4/30.
//  Copyright © 2019 BecksZeng. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ZGExtension)

+ (UIImage *)createNonInterpolatedUIImageFormQRUrl:(NSString *)url withSize:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
