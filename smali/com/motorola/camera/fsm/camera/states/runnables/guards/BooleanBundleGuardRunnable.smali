.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mConstant:Ljava/lang/String;

.field public final mDefault:Z

.field public final mGuard:Z

.field public final mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mGuard:Z

    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mDefault:Z

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mConstant:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mConstant:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mDefault:Z

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mGuard:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
