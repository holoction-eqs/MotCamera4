.class public final Landroidx/work/impl/utils/futures/AbstractFuture$Failure;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FALLBACK_INSTANCE:Landroidx/work/impl/utils/futures/AbstractFuture$Failure;


# instance fields
.field public final exception:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    new-instance v1, Landroidx/work/impl/utils/futures/AbstractFuture$Failure$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure$1;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->FALLBACK_INSTANCE:Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-void
.end method
