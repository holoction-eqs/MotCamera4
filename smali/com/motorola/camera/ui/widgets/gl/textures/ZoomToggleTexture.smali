.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mClickable:Z

.field public mCurrentValueX:F

.field public final mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mLoaded:Z

.field public mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public mMain2XZoomValue:F

.field public mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

.field public mPortraitCloseUpZoomValue:F

.field public mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

.field public mPortraitOriginalZoomValue:F

.field public mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

.field public mPortraitStandardZoomValue:F

.field public mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

.field public mPortraitWideZoomValue:F

.field public final mRtl:Z

.field public mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mTeleZoomValue:F

.field public final mToggleTextureList:Ljava/util/ArrayList;

.field public mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mUwZoomValue:F

.field public mValueX:Ljava/lang/String;

.field public mVideoRecording:Z

.field public mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mWideZoomValue:F

.field public final mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;


# direct methods
.method public static -$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    :goto_0
    return p0
.end method

.method public static -$$Nest$mshowZoomLimitedHint(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v2, 0x7f120633

    goto :goto_0

    :cond_0
    const v2, 0x7f120634

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120631

    goto :goto_1

    :cond_1
    const v3, 0x7f120632

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne p1, v1, :cond_2

    const p1, 0x7f0801f3

    goto :goto_2

    :cond_2
    const p1, 0x7f0801f4

    :goto_2
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v4, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f120630

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    const p1, 0x7f1205e8

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f1205b8

    goto :goto_3

    :cond_4
    const p0, 0x7f12059b

    :goto_3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    invoke-static {v1, p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_4
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    return-void
.end method

.method public static setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelTogglesTouchEvent()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancelTouch()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getRect()Lcom/google/common/base/Splitter$1;
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    mul-float/2addr p0, v1

    new-instance v1, Lcom/google/common/base/Splitter$1;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    neg-float p0, p0

    invoke-virtual {v1, p0, p0}, Lcom/google/common/base/Splitter$1;->inset(FF)V

    return-object v1
.end method

.method public final getValueX(FZ)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    rem-int/lit8 p1, v0, 0xa

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_PATTERN_NO_X:Ljava/lang/String;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p1

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initZoomValue()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method public final loadTexture()V
    .locals 9

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MAIN_2X_TOGGLE:Z

    if-eqz v5, :cond_0

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMain2XZoomValue:F

    invoke-virtual {p0, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v2, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_1

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    invoke-direct {v7, p0, v2, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_2

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-direct {v7, p0, v2, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v2, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p4, p2, p3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_7
    return-void
.end method

.method public final onLongPress(ZLandroid/graphics/PointF;)V
    .locals 3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p2, :cond_5

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz p2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    if-nez v1, :cond_9

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, v0}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    const-wide/16 p1, 0x6a4

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_0
    return-void
.end method

.method public final onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    invoke-virtual {p2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconSelectedRes()I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    :cond_2
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v3, v4

    goto :goto_0

    :cond_9
    move v3, v1

    :goto_0
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    if-nez v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_b

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchUp()V

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    move v1, v4

    :cond_d
    return v1
.end method

.method public final onVideoStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    return-void
.end method

.method public final onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_2
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_3
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p1

    goto :goto_1

    :catchall_3
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_4
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit p1

    goto :goto_1

    :catchall_4
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setAlpha(F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    const v2, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    invoke-virtual {p1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconRes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mUnselectedIconRes:Ljava/lang/Integer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    return-object v0
.end method

.method public final unloadTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 9

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    const v2, 0x7f080211

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    const v2, 0x7f080237

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    const v2, 0x7f080239

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    const v2, 0x7f08023b

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    const v2, 0x7f08023d

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomSegment;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->isTraditionProModeZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    goto :goto_3

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c9

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c7

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c5

    goto :goto_2

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c4

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v2, 0x7f0802c3

    :goto_2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_a
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_4

    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/4 v5, 0x0

    if-nez v2, :cond_15

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_6

    :cond_15
    if-ne v2, v1, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v0, 0x4

    :goto_5
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_6

    :cond_16
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    sget v6, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v8, v2

    mul-float/2addr v8, v6

    invoke-virtual {v7, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    iput v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v7, v6, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v7, 0x3

    if-eqz v3, :cond_17

    iput v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    goto :goto_5

    :cond_17
    iput v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iput v7, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    :goto_6
    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    mul-float/2addr p1, v4

    if-eqz v3, :cond_18

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :cond_18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    neg-float v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_7

    :cond_19
    move v1, v5

    :goto_7
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_1f
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v1, v1, 0x1

    :cond_20
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    int-to-float v0, v1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_21
    return-void
.end method

.method public final updateToggleTexVisibleType$enumunboxing$(I)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    :goto_1
    if-eqz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    throw p0

    :cond_4
    return-void
.end method
