.class public final Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    instance-of v0, p3, Landroid/os/Bundle;

    const v1, 0x7f120111

    const/4 v2, 0x1

    const-string v3, "ErrorState$ErrorAlwaysCodeRunnable"

    const-string v4, "OPEN_CAMERA_ERROR"

    if-eqz v0, :cond_1

    move-object v5, p3

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "IS_EXTERNAL_CAMERA"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const p3, 0x7f120104

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v0, 0x7f120105

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    iput p3, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 4
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    .line 5
    new-instance p3, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v2}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;I)V

    .line 6
    iput-object p3, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 7
    iput v1, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 8
    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 9
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 12
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_9

    :cond_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    move-object v6, p3

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "error_retry"

    if-nez v7, :cond_2

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string v6, "error_retry_count"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    const/4 v9, 0x2

    if-ge v7, v9, :cond_4

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ge p2, v9, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    invoke-virtual {p1, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 18
    invoke-direct {p2, p3, p1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_9

    :cond_4
    instance-of v6, p3, Ljava/io/IOException;

    if-nez v6, :cond_5

    instance-of v6, p3, Landroid/database/sqlite/SQLiteException;

    if-eqz v6, :cond_7

    .line 20
    :cond_5
    sget-object v6, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 21
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v7, "getInstance()"

    .line 22
    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x9600000

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    move v6, v2

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    if-eqz v6, :cond_7

    .line 24
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    new-instance p2, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v5}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;I)V

    .line 25
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x1040009

    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 26
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 27
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    const-string v6, "NO_CAMERAS_ERROR"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    sget-object p1, Landroidx/work/Configuration$Builder;->CAMERA_ERROR_UNKNOWN:Landroidx/work/Configuration$Builder;

    .line 28
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 29
    instance-of v6, v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    const/4 v7, -0x1

    if-eqz v6, :cond_9

    check-cast v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    goto :goto_3

    :cond_9
    instance-of v6, v0, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v8, 0x0

    if-eqz v6, :cond_a

    new-instance v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v6, v0, v8, v7}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    :goto_2
    move-object v0, v6

    goto :goto_3

    :cond_a
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_b

    new-instance v6, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v6, v8, v8, v0}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    invoke-direct {v0, v8, v8, v7}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    .line 30
    :goto_3
    iget-object v6, v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    iget-object v8, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 32
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_c

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_c
    sget-object v4, Landroidx/work/Configuration$Builder;->CAMERA_OPEN_ERROR:Landroidx/work/Configuration$Builder;

    const v8, 0x7f1200fa

    if-eqz v6, :cond_e

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/StateKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object p1, v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraDisabledException;

    if-eqz p1, :cond_d

    sget-object v4, Landroidx/work/Configuration$Builder;->CAMERA_DISABLED_ERROR:Landroidx/work/Configuration$Builder;

    const v8, 0x7f1200f5

    const p1, 0x7f1200f4

    goto :goto_5

    :cond_d
    const v8, 0x7f1200f8

    goto :goto_4

    :cond_e
    if-eqz v5, :cond_f

    :goto_4
    const p1, 0x7f1200f7

    goto :goto_5

    :cond_f
    const/16 v4, 0x64

    iget v0, v0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    if-ne v0, v4, :cond_10

    sget-object p1, Landroidx/work/Configuration$Builder;->CAMERA_ERROR_SERVER_DIED:Landroidx/work/Configuration$Builder;

    :cond_10
    const v0, 0x7f1200f3

    move-object v4, p1

    move p1, v0

    :goto_5
    sget-object v0, Landroidx/work/Configuration$Builder;->VID_REC_START_ERR:Landroidx/work/Configuration$Builder;

    if-eqz p3, :cond_13

    instance-of v5, p3, Landroid/os/Bundle;

    if-eqz v5, :cond_13

    check-cast p3, Landroid/os/Bundle;

    const-string v5, "error_message"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "Quota exceeded"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 33
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    new-instance v5, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p3, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 35
    :cond_11
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f1205f6

    .line 36
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 37
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f1205f5

    .line 38
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    :cond_12
    const v8, 0x7f120152

    const p1, 0x7f120151

    move-object v4, v0

    :cond_13
    :goto_6
    sget-boolean p3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-nez p3, :cond_15

    if-ne v4, v0, :cond_14

    goto :goto_7

    .line 39
    :cond_14
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 42
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_8

    .line 43
    :cond_15
    :goto_7
    new-instance p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p3}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    if-eq v8, v7, :cond_16

    iput v8, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    :cond_16
    if-eq p1, v7, :cond_17

    iput p1, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 44
    :cond_17
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    .line 45
    new-instance p2, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;I)V

    .line 46
    iput-object p2, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 47
    iput v1, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 48
    iput-boolean p1, p3, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 49
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 50
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {p1, p3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 52
    :goto_8
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 53
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    .line 54
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    .line 55
    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p1, "ERRTYP"

    iget-object p2, v4, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
