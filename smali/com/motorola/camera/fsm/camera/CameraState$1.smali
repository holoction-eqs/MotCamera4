.class public final Lcom/motorola/camera/fsm/camera/CameraState$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public mAutoTransitionState:Z

.field public mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public mParent:Lcom/motorola/camera/fsm/State;

.field public mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

.field public final mTransitions:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method public final autoTransition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    return-void
.end method

.method public final build()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraState;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;)V

    return-object v0
.end method

.method public final entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method public final exitAfterFireChange(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method public final exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    return-void
.end method

.method public final parent(Lcom/motorola/camera/fsm/State;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    return-void
.end method

.method public final state(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public final transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final transitions(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
