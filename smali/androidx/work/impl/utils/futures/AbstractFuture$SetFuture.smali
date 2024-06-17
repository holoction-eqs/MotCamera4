.class public final Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final future:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final owner:Landroidx/work/impl/utils/futures/AbstractFuture;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/futures/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    iput-object p2, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v2, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/material/shape/CornerTreatment;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    :cond_1
    return-void
.end method
