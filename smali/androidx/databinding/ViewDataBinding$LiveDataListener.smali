.class public final Landroidx/databinding/ViewDataBinding$LiveDataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroidx/databinding/ObservableReference;


# instance fields
.field public mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

.field public final mListener:Landroidx/databinding/WeakListener;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroidx/databinding/WeakListener;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/databinding/ViewDataBinding;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    iget-boolean v1, p1, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    if-nez v1, :cond_1

    iget p0, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroidx/databinding/ViewDataBinding;->onFieldChange(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    :cond_1
    return-void
.end method

.method public final removeListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    :goto_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    iget-object v1, v1, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method
