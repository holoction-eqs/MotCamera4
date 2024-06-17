.class public final synthetic Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    if-eqz p1, :cond_3

    move v5, v6

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_0
    return v6

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    :cond_5
    return v6

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mInflationStates:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v6, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_8

    if-ltz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    move-object p1, v0

    :goto_2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_BACK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    if-lez p1, :cond_d

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_5

    :cond_b
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState$1(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x4

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mNavBarColorOrig:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f0603a7

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_d
    :goto_5
    return v6

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "motorola.camera.intent.action.SWITCH_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SWITCH_TYPE"

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_f

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0, p0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto/16 :goto_8

    :cond_f
    const-string v0, "motorola.camera.intent.action.TAKE_PICTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_6

    :cond_10
    const-string v4, "motorola.camera.intent.action.TAKE_SELFIE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v2, v1, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;->mIntentList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    :goto_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_13

    goto :goto_7

    :cond_13
    const/16 v0, 0xbb8

    :goto_7
    const-string v1, "TIMER"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CHECKIN_CAPTURE_TRIGGER"

    const-string v1, "AOV"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p0, "LOCATION"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_14
    const-string p0, "ON_DOWN"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_TAKE_PICTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0, p1, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object p1, p0

    :goto_8
    invoke-interface {v3, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v5

    goto :goto_9

    :cond_15
    const-string p0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_16
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p0, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, p1, p0, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :cond_17
    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    invoke-interface {v3, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    aget v0, v0, v5

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/CameraIntentReceiver;->vibrateForQuickCapture(Landroid/content/Context;J)V

    :cond_19
    move v5, p0

    :cond_1a
    :goto_9
    return v5

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return v6

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_1c

    if-eq v0, v4, :cond_1b

    goto :goto_a

    :cond_1b
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_a

    :cond_1c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_a
    return v6

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    sget v0, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    if-eq v0, v6, :cond_1f

    if-eq v0, v4, :cond_1e

    if-eq v0, v2, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    goto :goto_c

    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v2, p1, v0}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_c

    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    :goto_b
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v0

    if-ge v5, v0, :cond_21

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1, v5}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Landroidx/work/WorkContinuation;)V

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_21
    :goto_c
    return v6

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_28

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_27

    check-cast p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_1
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_f

    :cond_22
    iget-object v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v1, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v1

    if-nez v1, :cond_24

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v1, :cond_23

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_d

    :cond_24
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v1, :cond_25

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_e

    :cond_26
    :goto_f
    monitor-exit v0

    goto :goto_10

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_27
    :goto_10
    move v5, v6

    :cond_28
    return v5

    :pswitch_8
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "task_id"

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x7

    if-eq v0, v2, :cond_29

    if-eq v0, v3, :cond_29

    goto :goto_11

    :cond_29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/motorola/camera/background/common/TaskId;

    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v0, :cond_2b

    sget-object p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, ""

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_11

    :catch_0
    move-exception p0

    const-string p1, "SaveImageServiceHandler"

    const-string v0, "Error while sending Job Progress"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_2a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V

    :cond_2b
    :goto_11
    return v6

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    iget-object p1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    iget-boolean v2, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v2, :cond_2d

    iget-boolean v2, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v2, :cond_2d

    iget-object v2, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v2}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v3, v5}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    iput-object v3, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    iput-boolean v5, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v0, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_2d
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->handler:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2e
    return v6

    :goto_12
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_32

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_13

    :cond_2f
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz p1, :cond_30

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit p0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusRotation:Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v6, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v0, v2, v5

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusRotation:Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    invoke-virtual {p1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    goto :goto_13

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_31
    :goto_13
    monitor-exit p0

    goto :goto_14

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_32
    monitor-enter p0

    :try_start_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz p1, :cond_33

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_33
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CaptureComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit p0

    :goto_14
    return v6

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
