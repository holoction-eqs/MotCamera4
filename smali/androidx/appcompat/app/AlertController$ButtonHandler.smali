.class public final Landroidx/appcompat/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDialog:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;I)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lcom/motorola/camera/instrumentreport/MeasureKpi;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/service/BgJobService;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    const-string v0, "service"

    .line 4
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_9

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "on"

    const-string v6, "off"

    const-string v7, "auto"

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    move-object v0, v7

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    iput-object v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mHdrSetting:Ljava/lang/String;

    if-ne v4, v8, :cond_2

    move-object v5, v7

    goto :goto_1

    :cond_2
    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v4, v2, :cond_4

    const-string v5, "torch"

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    iput-object v5, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mFlashSetting:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTtfSetting:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    :goto_2
    iput-boolean v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mPanoramaSetting:Z

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    iput-boolean v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mColdStart:Z

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v2, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mKPI:Lcom/motorola/camera/CameraKpi$KPI;

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/Worker$1;

    const/16 v2, 0x1a

    invoke-direct {v0, p1, v2}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_8
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_b

    const/4 v1, -0x2

    if-eq v0, v1, :cond_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_3
    return-void

    :goto_4
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_c

    const/4 v2, 0x4

    if-eq v4, v2, :cond_e

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_6

    :cond_c
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/service/BgJobService;

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "msg.data"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v2

    goto :goto_5

    :cond_d
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_e

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/service/BgJobService;

    if-eqz v4, :cond_e

    iget-object v5, v4, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v7, "msg.replyTo"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/motorola/camera/service/BgJobService;->acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "action"

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v6, v6, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v7, v2, v4, v5}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    sget v4, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    iget v4, p1, Landroid/os/Message;->what:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while handling : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BgJobService"

    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/BgJobService;

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    new-instance v2, Landroidx/work/impl/StartStopTokens;

    const/16 v4, 0xc

    invoke-direct {v2, v4}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    const-string v4, "URI"

    invoke-virtual {v2, v4, v1}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "FILE_NAME"

    invoke-virtual {v2, v4, v1}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DATE_TYPE"

    invoke-virtual {v2, v0, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const-string v0, "GLOBAL_UUID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-virtual {v2, p1}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    const-string p1, "ERROR_CASE"

    invoke-virtual {v2, v3, p1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string p1, "task_id"

    invoke-virtual {v2, p1}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    if-eqz p0, :cond_e

    invoke-virtual {v2, p1}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    const-string v0, "data.taskID"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_e
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
