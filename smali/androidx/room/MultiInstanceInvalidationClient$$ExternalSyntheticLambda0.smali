.class public final synthetic Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;I)V
    .locals 0

    iput p2, p0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;->f$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "this$0"

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;->f$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/MultiInstanceInvalidationClient$callback$1;

    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroidx/room/IMultiInstanceInvalidationService;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/MultiInstanceInvalidationClient$1;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/MultiInstanceInvalidationClient$1;)V

    goto :goto_0

    :cond_0
    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "ROOM"

    const-string v1, "Cannot register multi-instance invalidation callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;->f$0:Landroidx/room/MultiInstanceInvalidationClient;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/MultiInstanceInvalidationClient$1;

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v2, p0}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/room/InvalidationTracker$ObserverWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    if-eqz p0, :cond_6

    iget-object v1, v0, Landroidx/room/InvalidationTracker;->observedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    iget-object p0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "tableIds"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    :try_start_2
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    const/4 v6, 0x1

    if-ge v4, v2, :cond_3

    aget v7, p0, v4

    iget-object v8, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    aget-wide v9, v8, v7

    const-wide/16 v11, 0x1

    sub-long v13, v9, v11

    aput-wide v13, v8, v7

    cmp-long v7, v9, v11

    if-nez v7, :cond_2

    iput-boolean v6, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v1

    if-eqz v5, :cond_6

    iget-object p0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_4

    move v3, v6

    :cond_4
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->syncTriggers$room_runtime_release(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_7
    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
