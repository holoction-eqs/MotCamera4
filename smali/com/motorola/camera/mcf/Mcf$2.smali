.class public final Lcom/motorola/camera/mcf/Mcf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$arg2:I

.field public final synthetic val$arg3:I

.field public final synthetic val$arg6:I

.field public final synthetic val$obj1:Ljava/lang/Object;

.field public final synthetic val$obj2:Ljava/lang/Object;

.field public final synthetic val$obj3:Ljava/lang/Object;

.field public final synthetic val$obj4:Ljava/lang/Object;

.field public final synthetic val$obj5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg2:I

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg3:I

    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg6:I

    iput-object p5, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj5:Ljava/lang/Object;

    iput-object p6, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj1:Ljava/lang/Object;

    iput-object p7, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj2:Ljava/lang/Object;

    iput-object p8, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for full frame event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmReprocessLock(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmIsReprocessOpen(Lcom/motorola/camera/mcf/Mcf;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg2:I

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->values()[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    iget v6, v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->mIntValue:I

    if-ne v6, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received invalid FrameTarget int: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    :goto_1
    move-object v10, v5

    iget v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg3:I

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v11

    iget v9, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg6:I

    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj5:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj1:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj2:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj3:Ljava/lang/Object;

    move-object v14, p0

    check-cast v14, Lcom/motorola/camera/mcf/McfMetadata;

    move-object v6, v0

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual/range {v6 .. v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onReprocessRequest(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postFullFrameEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
