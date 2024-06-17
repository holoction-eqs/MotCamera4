.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "SourceFile"


# instance fields
.field public final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    sget-object p1, Lkotlinx/coroutines/JobSupport;->_parentHandle$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/ChildHandle;

    instance-of v2, v1, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/ChildHandle;

    instance-of v2, v1, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v2, :cond_2

    check-cast v1, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return-void
.end method


# virtual methods
.method public final getHandlesException$kotlinx_coroutines_core()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return p0
.end method

.method public final getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
