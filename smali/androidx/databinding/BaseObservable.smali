.class public abstract Landroidx/databinding/BaseObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient mCallbacks:Landroidx/databinding/PropertyChangeRegistry;


# virtual methods
.method public final notifyPropertyChanged(I)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroidx/databinding/BaseObservable;->mCallbacks:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v7, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    check-cast v1, Landroidx/databinding/ViewDataBinding;

    monitor-enter v7

    :try_start_1
    iget p0, v7, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    const/4 v8, 0x1

    add-int/2addr p0, v8

    iput p0, v7, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    iget-object p0, v7, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object p0, v7, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const/4 v9, -0x1

    if-nez p0, :cond_1

    move p0, v9

    goto :goto_0

    :cond_1
    array-length p0, p0

    add-int/2addr p0, v9

    :goto_0
    invoke-virtual {v7, v1, p1, p0}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Landroidx/databinding/ViewDataBinding;II)V

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 v3, p0, 0x40

    const-wide/16 v5, 0x0

    move-object v0, v7

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Landroidx/databinding/ViewDataBinding;IIIJ)V

    iget p0, v7, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    add-int/2addr p0, v9

    iput p0, v7, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez p0, :cond_8

    iget-object p0, v7, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_5

    array-length p0, p0

    add-int/2addr p0, v9

    :goto_1
    if-ltz p0, :cond_5

    iget-object p1, v7, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, p1, p0

    cmp-long p1, v4, v2

    if-eqz p1, :cond_4

    add-int/lit8 p1, p0, 0x1

    mul-int/lit8 p1, p1, 0x40

    add-int/lit8 v6, p1, 0x40

    sub-int/2addr v6, v8

    move-wide v9, v0

    :goto_2
    if-lt v6, p1, :cond_3

    and-long v11, v4, v9

    cmp-long v11, v11, v2

    if-eqz v11, :cond_2

    iget-object v11, v7, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    ushr-long/2addr v9, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    iget-object p1, v7, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide v2, p1, p0

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    iget-wide p0, v7, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    cmp-long v4, p0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x3f

    :goto_3
    if-ltz v4, :cond_7

    and-long v5, p0, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_6

    iget-object v5, v7, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    ushr-long/2addr v0, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    iput-wide v2, v7, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
