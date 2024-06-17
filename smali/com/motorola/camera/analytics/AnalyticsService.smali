.class public final Lcom/motorola/camera/analytics/AnalyticsService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mServiceHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$smmapBundleToEntries(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_4
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const/4 v4, 0x7

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v4, v2, v3, v8}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_2

    :pswitch_1
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {v4, v2, v3, v5}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_2

    :pswitch_2
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/Long;

    invoke-direct {v4, v2, v3, v6}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_2

    :pswitch_3
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/Double;

    invoke-direct {v4, v2, v3, v9}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_2

    :pswitch_4
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_2

    :pswitch_5
    new-instance v4, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v7}, Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnalyticsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsService;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method
