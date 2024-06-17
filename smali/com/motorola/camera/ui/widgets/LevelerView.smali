.class public final Lcom/motorola/camera/ui/widgets/LevelerView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public mDeviationValue:I

.field public mLeveled:Z

.field public final mLeveledColor:I

.field public final mLevelerHeight:F

.field public final mLevelerLine:Landroid/widget/ImageView;

.field public mLevelerWidth:F

.field public final mMainLine:Landroid/widget/ImageView;

.field public mMainLineWidth:F

.field public mOrientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    const v0, 0x7f0a026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    const v0, 0x7f0a0259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060379

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    return-void
.end method


# virtual methods
.method public final computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_3

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p2, :cond_0

    iget p2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    goto :goto_2

    :cond_2
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    :goto_2
    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    :goto_3
    return-void
.end method

.method public final setDisplayOrientation(Landroid/view/View;I)V
    .locals 3

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    int-to-float p2, p2

    sub-float/2addr p2, v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_1

    add-float/2addr p2, v2

    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    sub-float/2addr p2, v2

    :cond_2
    add-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/widgets/LevelerView$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/LevelerView$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final updateMainLineResource()V
    .locals 14

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    float-to-int v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v3, v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    new-instance v10, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    mul-float/2addr v3, v11

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v12, 0x40800000    # 4.0f

    mul-float v4, v11, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v5, v2, v13

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr v3, v13

    iget v6, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v6, v13

    sub-float v6, v3, v6

    div-float v7, v2, v13

    move-object v3, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float v4, v3, v13

    iget p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr p0, v13

    add-float/2addr v4, p0

    div-float v5, v2, v13

    mul-float/2addr v11, v12

    sub-float v6, v3, v11

    div-float v7, v2, v13

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateResource()V
    .locals 12

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v2, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    new-instance v9, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v10

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v5, v2, v11

    const/4 v4, 0x0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    move-object v2, v8

    move v3, v5

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    div-float/2addr v1, v11

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v2, v11

    sub-float v3, v1, v10

    invoke-virtual {v8, v2, v1, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
