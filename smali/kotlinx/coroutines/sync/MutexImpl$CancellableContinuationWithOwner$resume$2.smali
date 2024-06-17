.class public final Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;

.field public final synthetic this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;I)V
    .locals 0

    iput p3, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->$r8$classId:I

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void

    .line 4
    :goto_0
    sget-object p1, Lkotlinx/coroutines/sync/MutexImpl;->owner$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
