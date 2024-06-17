.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:J

.field public final synthetic $state:Ljava/lang/String;

.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->this$0:Lcom/google/common/base/Splitter$1;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$key:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$state:Ljava/lang/String;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$key:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$state:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;-><init>(Lcom/google/common/base/Splitter$1;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$state:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;->$key:J

    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    check-cast p1, Landroidx/collection/MapCollections;

    invoke-virtual {p1, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->boxInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    check-cast p1, Landroidx/collection/MapCollections;

    invoke-virtual {p1, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
