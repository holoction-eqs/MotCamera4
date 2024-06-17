.class public Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mConstant:Ljava/lang/String;

.field public final mValue:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mConstant:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mValue:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mConstant:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mValue:Ljava/io/Serializable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :goto_0
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
