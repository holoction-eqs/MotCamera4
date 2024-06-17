.class public final Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;


# instance fields
.field public volatile next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

.field public volatile thread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;-><init>(I)V

    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Lcom/google/android/material/shape/CornerTreatment;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/shape/CornerTreatment;->putThread(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
