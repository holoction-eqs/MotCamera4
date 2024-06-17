.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cachedCameraStatusHolder:Ljava/lang/Object;

.field public final liveData:Ljava/lang/Object;

.field public previousCameraHolder:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->$r8$classId:I

    const-string v0, "liveData"

    .line 1
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;Lcom/motorola/camera/device/CameraStateManager;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v0, :cond_2

    iget v5, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iget v6, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    if-ne v5, v6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget v0, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iget v6, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    if-ne v0, v6, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v5, :cond_4

    iget v5, v5, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    if-ne v5, v3, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    const/4 v7, 0x2

    if-eq v7, v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    invoke-direct {v6, v5, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_7
    return-void

    :goto_8
    check-cast v1, Lcom/motorola/camera/device/CameraStateManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->allCamerasClosed()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    move v3, v4

    :goto_9
    monitor-exit v1

    if-eqz v3, :cond_a

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
