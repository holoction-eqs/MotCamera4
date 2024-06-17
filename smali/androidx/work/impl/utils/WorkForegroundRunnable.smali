.class public final Landroidx/work/impl/utils/WorkForegroundRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field public final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field public final mWorker:Landroidx/work/ListenableWorker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p5}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/ListenableWorker;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iget-object p0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
