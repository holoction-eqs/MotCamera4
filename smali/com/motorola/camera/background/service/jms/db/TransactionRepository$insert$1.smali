.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:J

.field public final synthetic $transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/Transaction;JLcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/google/common/base/Splitter$1;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/google/common/base/Splitter$1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;-><init>(Lcom/motorola/camera/background/service/jms/db/Transaction;JLcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-wide v0, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/Object;

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
