.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mTwilightManager:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/core/view/MenuHostHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getApplyableNightMode()I
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-wide v4, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v6}, Landroidx/media3/common/Format$1;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroidx/core/view/MenuHostHelper;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    iget-object v7, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v7, v8}, Landroidx/media3/common/Format$1;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    const-string v6, "gps"

    invoke-virtual {v0, v6}, Landroidx/core/view/MenuHostHelper;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    :goto_2
    move-object v4, v6

    :cond_5
    if-eqz v4, :cond_c

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/TwilightManager$TwilightState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v6, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v6, :cond_6

    new-instance v6, Landroidx/appcompat/app/TwilightCalculator;

    invoke-direct {v6}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    sput-object v6, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    :cond_6
    sget-object v11, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    const-wide/32 v22, 0x5265c00

    sub-long v20, v13, v22

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v6, v11

    move-wide v11, v13

    invoke-virtual/range {v6 .. v12}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget v6, v15, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v6, v3, :cond_7

    move v5, v3

    :cond_7
    iget-wide v6, v15, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    iget-wide v8, v15, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    add-long v20, v13, v22

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v4, v15

    invoke-virtual/range {v15 .. v21}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget-wide v10, v4, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v15, -0x1

    cmp-long v4, v6, v15

    if-eqz v4, :cond_b

    cmp-long v4, v8, v15

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    cmp-long v4, v13, v8

    const-wide/16 v15, 0x0

    if-lez v4, :cond_9

    add-long/2addr v10, v15

    goto :goto_3

    :cond_9
    cmp-long v4, v13, v6

    if-lez v4, :cond_a

    add-long v10, v8, v15

    goto :goto_3

    :cond_a
    add-long v10, v6, v15

    :goto_3
    const-wide/32 v6, 0xea60

    add-long/2addr v10, v6

    goto :goto_5

    :cond_b
    :goto_4
    const-wide/32 v6, 0x2932e00

    add-long v10, v13, v6

    :goto_5
    iput-boolean v5, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    iput-wide v10, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    :goto_6
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto :goto_7

    :cond_c
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_d

    const/16 v1, 0x16

    if-lt v0, v1, :cond_e

    :cond_d
    move v5, v3

    :cond_e
    move v0, v5

    :goto_7
    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    return v2

    :goto_9
    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    move v2, v3

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    return-void

    :goto_0
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
