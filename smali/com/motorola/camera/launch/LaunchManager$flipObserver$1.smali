.class public final Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange(Z)V
    .locals 8

    iget p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    check-cast p0, Lcom/motorola/camera/launch/LaunchManager;

    iget v0, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    if-eqz v0, :cond_b

    check-cast v0, Lcom/motorola/camera/Camera;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v1, v2

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v3, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne p1, v2, :cond_8

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v6, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_2

    :cond_5
    if-ne p1, v2, :cond_6

    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_8

    invoke-static {v0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmotorola/core_services/cli/CLIManager;->queryCliTransition(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    :cond_8
    :goto_2
    move v1, v3

    :goto_3
    iget-object v4, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v4, :cond_9

    if-eqz v1, :cond_b

    :cond_9
    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    const-string v4, "FINISH_APP"

    invoke-static {v4, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v1, :cond_a

    const-string v1, "RECREATE_ACTIVITY"

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iget-object v0, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_b
    iput p1, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    :cond_c
    return-void

    :goto_4
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    iget-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
