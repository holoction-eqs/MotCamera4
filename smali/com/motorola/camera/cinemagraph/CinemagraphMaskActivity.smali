.class public Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;
.implements Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;
.implements Lcom/motorola/camera/ActivityStarter;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBitmapPreview:Landroid/graphics/Bitmap;

.field public final mCancellableTaskToken:Ljava/lang/Object;

.field public mCinemagraphHandler:Landroid/os/Handler;

.field public mCinemagraphThread:Landroid/os/HandlerThread;

.field public mClearButton:Landroid/widget/TextView;

.field public final mDialogClickListener:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;

.field public mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

.field public mDrawButton:Landroid/widget/ImageButton;

.field public mDrawMaskCallback:Lcom/airbnb/lottie/model/MutablePair;

.field public volatile mEditDone:Z

.field public mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

.field public mEraseButton:Landroid/widget/ImageButton;

.field public mExitButton:Landroid/widget/ImageButton;

.field public mFrameNum:I

.field public mHeight:I

.field public volatile mIsActivityRunning:Z

.field public mIsBounce:Z

.field public volatile mIsDiscarded:Z

.field public mIsDrawErasingMode:Z

.field public mIsVideo:Z

.field public final mLockBitmapPreview:Ljava/lang/Object;

.field public mLoopButton:Landroid/widget/LinearLayout;

.field public mLoopIcon:Landroid/widget/ImageView;

.field public mLoopText:Landroid/widget/TextView;

.field public mMainLayout:Landroid/view/View;

.field public mMultiWindowView:Landroid/view/View;

.field public mPreviewButton:Landroid/widget/TextView;

.field public mPreviewInterval:I

.field public mRejectButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/TextView;

.field public mSaveFormatBar:Landroid/widget/LinearLayout;

.field public volatile mSaving:Z

.field public mSelectedBitmap:Landroid/graphics/Bitmap;

.field public mSpinner:Landroid/widget/ProgressBar;

.field public mSpinnerText:Landroid/widget/TextView;

.field public final mTooltipsList:Ljava/util/LinkedList;

.field public mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

.field public final mUiHandler:Landroid/os/Handler;

.field public mVideoBar:Landroid/widget/LinearLayout;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDialogClickListener:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;

    return-void
.end method

.method public static synthetic access$001(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static isFirstTime()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final cleanup()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->release()V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawMaskCallback:Lcom/airbnb/lottie/model/MutablePair;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hideSystemUi()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final hideTooltips()V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->onBackPressed()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showUi()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12062e

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDialogClickListener:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12009b

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public final onChange()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string v0, "BatterySaverHandler"

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f1200a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "brightness"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideSystemUi()V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v4, "com.motorola.cinemagraph.intent.width"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    const-string v4, "com.motorola.cinemagraph.intent.height"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    const-string v4, "com.motorola.cinemagraph.intent.frameCount"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    const-string v4, "com.motorola.cinemagraph.intent.interval"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewInterval:I

    :cond_2
    const v1, 0x7f0d0032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0a00e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    iget v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    iput v4, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iput v5, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    mul-int/lit8 v6, v5, 0x5

    div-int/lit8 v6, v6, 0x64

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    iput v6, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetHeight:I

    mul-int/lit8 v8, v4, 0x5

    div-int/lit8 v8, v8, 0x64

    mul-int/2addr v8, v7

    sub-int v8, v4, v8

    iput v8, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetWidth:I

    sub-int/2addr v4, v8

    div-int/2addr v4, v7

    iput v4, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    iput v5, v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetWidth()I

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v4}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetheight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iput-boolean v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    const v1, 0x7f0a00dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    const v1, 0x7f0a00de

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    const v1, 0x7f0a03c0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0412

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v1, 0x7f0a00df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    new-instance v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(Landroid/view/View;I)V

    const v1, 0x7f0a00d8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00d7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v7}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(Landroid/view/View;I)V

    const v1, 0x7f0a00da

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a00db

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    const v1, 0x7f0a00dc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateLoopButton()V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    const v1, 0x7f0a00e1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    const/4 v8, 0x4

    invoke-direct {v2, p0, v8}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(Landroid/view/View;I)V

    const v1, 0x7f0a00e0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    const v1, 0x7f0a00d6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    const v1, 0x7f0a00d9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    const v1, 0x7f0a00ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mVideoBar:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnFrameUpdateCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewInterval:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameInterval(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTimelineEditCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTrimCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginStart(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-static {v1, p1}, Lcom/motorola/camera/utility/MarginUtil;->setMarginEnd(Landroid/view/View;I)V

    const p1, 0x7f0a00e2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00e6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_3

    iput-boolean v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    const v1, 0x7f0a00e5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setButtonsEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setMaskButtonsEnabled(Z)V

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    invoke-direct {v1, p0, v7}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    new-instance p1, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawMaskCallback:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setDrawMaskCallback(Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "cinemagraphPreviewThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {p1}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "CinemagraphMaskActivity"

    const-string v0, "Cinemagraph Engine not initialized, closing mask activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lokio/SegmentPool;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->cleanup()V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v0}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onFrameUpdate(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;

    const/4 v4, 0x1

    invoke-direct {v0, p0, p1, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V

    :goto_0
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateUiForMultiWindowMode(Z)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->start()V

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateUiForMultiWindowMode(Z)V

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->stop()V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideTooltips()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->cleanup()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onTimelineEdited(II)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final onTrim(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideSystemUi()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showTooltips()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setButtonsEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setMaskButtonsEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    iget-object v3, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method public final showTooltips()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showUi()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mVideoBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showTooltips()V

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/JvmClassMappingKt;->launchGallery(Landroid/app/Activity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v2, 0x7f1200a8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;

    invoke-direct {v1, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V

    :goto_0
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCancellableTaskToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateLoopButton()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0801bb

    goto :goto_0

    :cond_0
    const v1, 0x7f0801bc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLoopText:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    if-eqz p0, :cond_1

    const p0, 0x7f1200a2

    goto :goto_1

    :cond_1
    const p0, 0x7f1200aa

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public final updateUiForMultiWindowMode(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideTooltips()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMainLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mMultiWindowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f08037c

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->startPreview()V

    :cond_1
    :goto_0
    return-void
.end method
