.class public final Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;
.source "SourceFile"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HISTORY_STATE"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
