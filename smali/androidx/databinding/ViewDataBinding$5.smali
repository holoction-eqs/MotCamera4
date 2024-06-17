.class public final Landroidx/databinding/ViewDataBinding$5;
.super Landroidx/work/WorkManager;
.source "SourceFile"


# virtual methods
.method public onNotifyCallback(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    check-cast p2, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;

    iget-object p0, p2, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/WeakListener;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/databinding/ViewDataBinding;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/BaseObservable;

    if-eq v0, p3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    if-nez v0, :cond_3

    iget p0, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    invoke-virtual {p2, p3, p0, p1}, Landroidx/databinding/ViewDataBinding;->onFieldChange(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    :cond_3
    :goto_0
    return-void
.end method
