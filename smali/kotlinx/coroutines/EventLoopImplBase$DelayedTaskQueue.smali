.class public final Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
.super Lkotlinx/coroutines/internal/ThreadSafeHeap;
.source "SourceFile"


# instance fields
.field public timeNow:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    return-void
.end method
