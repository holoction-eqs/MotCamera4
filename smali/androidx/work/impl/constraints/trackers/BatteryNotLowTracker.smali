.class public final Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;
.super Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;I)V
    .locals 1

    iput p3, p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    return-void
.end method


# virtual methods
.method public final getInitialState()Ljava/lang/Boolean;
    .locals 9

    iget v0, p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    const-string v1, "getInitialState - null intent received"

    const/4 v2, -0x1

    const-string v3, "status"

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    .line 2
    sget-object v0, Landroidx/work/impl/constraints/trackers/BatteryChargingTrackerKt;->TAG:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    move v5, v6

    .line 5
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0

    .line 6
    :pswitch_1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    .line 7
    sget-object v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;->TAG:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "level"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    if-eq v0, v6, :cond_4

    const p0, 0x3e19999a    # 0.15f

    cmpl-float p0, v1, p0

    if-lez p0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0

    .line 9
    :goto_2
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {v7, v8, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x46671f94

    if-eq v0, v1, :cond_8

    const v1, -0x2b8fb65c

    if-eq v0, v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_8
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v6

    :cond_a
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->getInitialState()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_1
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->getInitialState()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->getInitialState()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget p0, p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.CHARGING"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
