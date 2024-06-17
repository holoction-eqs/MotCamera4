.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $file:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/google/common/base/Splitter$1;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/db/Transaction;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/db/Transaction;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;-><init>(Lcom/google/common/base/Splitter$1;Lcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/Object;

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p0}, Landroidx/room/EntityInsertionAdapter;->handle(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->boxInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
