.class public abstract Landroidx/collection/MapCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEntrySet:Ljava/lang/Object;

.field public mKeySet:Ljava/lang/Object;

.field public mValues:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/JsonConfig$CameraMapping;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>(I)V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    .line 5
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    iput-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    return-void
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final acquire()Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 3

    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteStatement;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->createNewStatement()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzw;
    .locals 9

    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkState(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzc()V

    return-object p0

    :cond_1
    new-instance v3, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v3, v1}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, v3, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v6, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/zza;)V

    new-instance v7, Landroidx/room/TransactionExecutor;

    invoke-direct {v7, p1, p3, v3, v6}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/JsonConfig$CameraMapping;

    new-instance v8, Lcom/google/mlkit/common/sdkinternal/zzn;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/zzn;-><init>(Landroidx/collection/MapCollections;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/zza;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v8, v7}, Lcom/motorola/camera/JsonConfig$CameraMapping;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, v6, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method

.method public abstract cancelAnimatorImmediately()V
.end method

.method public abstract colClear()V
.end method

.method public abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method public abstract colGetMap()Landroidx/collection/ArrayMap;
.end method

.method public abstract colGetSize()I
.end method

.method public abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method public abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method public abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract colRemoveAt(I)V
.end method

.method public abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final createNewStatement()Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "sql"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public final dispatchCallbackSafely()V
    .locals 2

    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;-><init>(Landroidx/collection/MapCollections;)V

    iget-object p0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v1, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    iget-object p0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public abstract invalidateSpecValues()V
.end method

.method public abstract load()V
.end method

.method public abstract registerAnimatorsCompleteCallback(Lcom/google/android/material/checkbox/MaterialCheckBox$1;)V
.end method

.method public abstract release()V
.end method

.method public final release(Landroidx/sqlite/db/SupportSQLiteStatement;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v0, Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteStatement;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public abstract requestCancelAnimatorAfterCurrentCycle()V
.end method

.method public abstract startAnimator()V
.end method

.method public final toArrayHelper(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    array-length v1, p2

    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p2

    if-le p0, v0, :cond_2

    const/4 p0, 0x0

    aput-object p0, p2, v0

    :cond_2
    return-object p2
.end method

.method public abstract toByteArray(Ljava/lang/Object;)[B
.end method

.method public abstract unregisterAnimatorsCompleteCallback()V
.end method
