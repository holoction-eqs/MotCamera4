.class public final Lcom/motorola/camera/mcf/Mcf$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$arg2:I

.field public final synthetic val$arg3:I

.field public final synthetic val$arg5:I

.field public final synthetic val$obj1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIIJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg2:I

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg3:I

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg5:I

    iput-object p6, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    iget v2, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg2:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown ProgressType input : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_4
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_5
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_6
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_7
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_8
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_9
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_a
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_b
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_c
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_d
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_e
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_f
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :sswitch_10
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    :cond_2
    :goto_0
    iget v2, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg3:I

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->-$$Nest$smtoEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget v2, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg5:I

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onProgressIndication(Lcom/motorola/camera/mcf/Mcf$ProgressType;Lcom/motorola/camera/mcf/McfInstanceIdentifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_b
        0x100 -> :sswitch_a
        0x200 -> :sswitch_9
        0x400 -> :sswitch_8
        0x800 -> :sswitch_7
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method
