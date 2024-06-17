.class public abstract Landroidx/work/multiprocess/RemoteClientUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sVoidMapper:Landroidx/work/InputMergerFactory$1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    sput-object v0, Landroidx/work/multiprocess/RemoteClientUtils;->sVoidMapper:Landroidx/work/InputMergerFactory$1;

    return-void
.end method

.method public static map(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 3

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$7;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
