.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$ObserverWrapper;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData$ObserverWrapper;",
        "Landroidx/lifecycle/LifecycleEventObserver;"
    }
.end annotation


# instance fields
.field public final mOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$ObserverWrapper;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method public final detachObserver()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LifecycleRegistry;

    iget-object p2, p2, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroidx/lifecycle/LiveData;

    iget-object p0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final shouldBeActive()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method
