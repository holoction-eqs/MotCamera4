.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static mIsModesMenuOpen:Z = false

.field public static mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;


# instance fields
.field public mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

.field public final mHandler:Landroid/os/Handler;

.field public mImage:Landroid/widget/ImageView;

.field public mIsControlPanelOpen:Z

.field public mIsSplitScreen:Z

.field public mLandscapeAlignCenter:Z

.field public mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public mPreviewRect:Landroid/graphics/RectF;

.field public mRootLayout:Landroid/widget/RelativeLayout;

.field public mText:Landroid/widget/TextView;

.field public mTextDescription:Landroid/widget/TextView;

.field public mToastStyle:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    new-instance p2, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static hasLimitToast()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string v0, "BatterySaverHandler"

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    const-string v0, "BatteryHandler"

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

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
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final handlePanoLimitToast(Z)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final inflateViewStub()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    :cond_0
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    if-eq p2, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsSplitScreen:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final rotate(I)V
    .locals 6

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->handlePanoLimitToast(Z)V

    :cond_2
    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v3, :cond_3

    sget-object v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne v3, v5, :cond_3

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean v3, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mCenterRotation:Z

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    :cond_5
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;ZI)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateToastLayout(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method

.method public final showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0431

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->rotate(I)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    sget-object v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-nez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    iget v5, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    const/16 v1, 0x8

    iget v5, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mImageResource:I

    if-eqz v5, :cond_a

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v7, v5}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget v5, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    const/4 v7, 0x6

    const v8, 0x7f0800b2

    iget-object v9, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    if-eqz v6, :cond_d

    const/4 v10, 0x4

    if-eq v6, v10, :cond_c

    if-eq v6, v2, :cond_b

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0800b6

    invoke-static {v6, v8}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v6, 0x7f130386

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iput v7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v6, 0x7f130141

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iput-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mToastStyle:I

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0800b5

    invoke-static {v4, v6}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v4, 0x7f130226

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mText:Landroid/widget/TextView;

    const v6, 0x7f13019e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p0, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-ne v5, v2, :cond_f

    const-string p1, " "

    invoke-static {p0, p1, v9}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_6

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto/16 :goto_5

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    sput-boolean v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_17

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_17

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto/16 :goto_5

    :cond_6
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    move v2, v3

    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v0, v1, v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_b

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto/16 :goto_5

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    sput-boolean v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_17

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_1

    :cond_d
    move v2, v3

    :goto_1
    if-nez v2, :cond_17

    goto/16 :goto_4

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eq p1, v5, :cond_10

    if-ne p1, v4, :cond_f

    goto :goto_2

    :cond_f
    move v2, v3

    :cond_10
    :goto_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->handlePanoLimitToast(Z)V

    goto/16 :goto_6

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->hasLimitToast()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result p1

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eq p1, v5, :cond_13

    if-ne p1, v4, :cond_12

    goto :goto_3

    :cond_12
    move v2, v3

    :cond_13
    :goto_3
    if-eqz v2, :cond_17

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto :goto_5

    :cond_14
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    goto :goto_5

    :cond_15
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    goto :goto_6

    :cond_16
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v0, :cond_17

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mDismissOnCaptureStarts:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    :goto_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_17
    :goto_6
    return-void
.end method

.method public final updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    sget-object v7, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    sget-object v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 v9, 0xb4

    if-ne v6, v9, :cond_4

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    invoke-static {v6}, Ljms/IJobMgrService$_Parcel;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v10, 0x2

    if-eq v6, v10, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v7

    goto :goto_1

    :cond_3
    move-object v5, v8

    :cond_4
    :goto_1
    sget-object v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne v5, v6, :cond_5

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_14

    :cond_5
    if-eq v5, v7, :cond_6

    if-ne v5, v8, :cond_20

    :cond_6
    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v13, 0x5a

    const/16 v14, 0xb

    const/16 v15, 0x9

    const/16 v10, 0xc

    const/16 v11, 0xa

    const/4 v12, 0x0

    if-eq v6, v13, :cond_18

    if-eq v6, v9, :cond_12

    const/16 v9, 0x10e

    if-eq v6, v9, :cond_a

    if-ne v5, v8, :cond_7

    move v0, v12

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    move v0, v12

    :goto_3
    invoke-virtual {v1, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_c

    :cond_9
    float-to-int v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_d

    :cond_a
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-virtual {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-nez v2, :cond_f

    if-ne v5, v8, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    move v2, v12

    :goto_4
    invoke-virtual {v1, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v7, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    move v2, v12

    :goto_5
    invoke-virtual {v1, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v7, :cond_d

    move v0, v4

    goto :goto_6

    :cond_d
    move v0, v12

    :goto_6
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne v5, v8, :cond_e

    goto :goto_7

    :cond_e
    move v4, v12

    :goto_7
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_14

    :cond_f
    if-ne v5, v8, :cond_10

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    move v0, v12

    :goto_8
    invoke-virtual {v1, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v8, :cond_11

    move v0, v12

    goto :goto_9

    :cond_11
    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_14

    :cond_12
    if-ne v5, v8, :cond_13

    move v0, v12

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v8, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    move v0, v12

    :goto_b
    invoke-virtual {v1, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_c
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v12, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v12, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_14

    :cond_15
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_16

    float-to-int v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_16
    float-to-int v0, v3

    :goto_d
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_17
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_e
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_14

    :cond_18
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-virtual {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-nez v2, :cond_1d

    if-ne v5, v7, :cond_19

    const/4 v2, 0x1

    goto :goto_f

    :cond_19
    move v2, v12

    :goto_f
    invoke-virtual {v1, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v8, :cond_1a

    const/4 v2, 0x1

    goto :goto_10

    :cond_1a
    move v2, v12

    :goto_10
    invoke-virtual {v1, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLandscapeAlignCenter:Z

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v7, :cond_1b

    move v0, v4

    goto :goto_11

    :cond_1b
    move v0, v12

    :goto_11
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v5, v8, :cond_1c

    goto :goto_e

    :cond_1c
    move v4, v12

    goto :goto_e

    :cond_1d
    if-ne v5, v8, :cond_1e

    move v0, v12

    goto :goto_12

    :cond_1e
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne v5, v8, :cond_1f

    const/4 v5, 0x1

    goto :goto_13

    :cond_1f
    move v5, v12

    :goto_13
    invoke-virtual {v1, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_20
    :goto_14
    return-void
.end method

.method public final updateToastLayout(Z)V
    .locals 11

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mPreviewRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object v4, v2

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v5, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    int-to-float v4, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout21_9()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v8

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->getProperlyHeight(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;Z)F

    move-result v8

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_1
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_2

    :cond_5
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v4

    :goto_2
    float-to-int p1, p1

    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x2

    goto :goto_3

    :cond_6
    sub-float/2addr v6, v3

    mul-float/2addr v6, v4

    float-to-int p1, v6

    :goto_3
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p1, 0xe

    const/4 v0, -0x1

    invoke-virtual {v5, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    sget-object v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 v7, 0xf

    if-ne p1, v6, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v5, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_8
    :goto_4
    mul-float/2addr v3, v4

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-ne p1, v6, :cond_9

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mCenterRotation:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    const/16 v1, 0xd

    if-eqz p1, :cond_a

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v3, v4

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    const v0, 0x7f0704c1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07052d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_6
    move v3, p1

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v0, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, p1

    goto :goto_7

    :cond_c
    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight()F

    move-result v0

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v1, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float v4, v1, v0

    iget-object v0, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, p1

    :cond_d
    :goto_7
    float-to-int p1, v3

    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int p1, v4

    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
