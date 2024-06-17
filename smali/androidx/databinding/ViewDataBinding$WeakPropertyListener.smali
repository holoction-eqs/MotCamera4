.class public final Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# instance fields
.field public final mListener:Landroidx/databinding/WeakListener;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/databinding/WeakListener;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/databinding/BaseObservable;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/databinding/BaseObservable;->mCallbacks:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p1, Landroidx/databinding/BaseObservable;->mCallbacks:Landroidx/databinding/PropertyChangeRegistry;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p1, Landroidx/databinding/BaseObservable;->mCallbacks:Landroidx/databinding/PropertyChangeRegistry;

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final removeListener(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/databinding/BaseObservable;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/databinding/BaseObservable;->mCallbacks:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    monitor-exit p1

    goto :goto_1

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v0

    :try_start_1
    iget p1, v0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez p1, :cond_1

    iget-object p1, v0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/databinding/CallbackRegistry;->setRemovalBit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method
