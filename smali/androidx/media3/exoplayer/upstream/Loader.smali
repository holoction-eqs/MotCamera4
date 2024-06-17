.class public final Landroidx/media3/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;


# instance fields
.field public currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

.field public final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field public fatalError:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J
    .locals 11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;-><init>(Landroidx/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;IJ)V

    const-wide/16 p0, 0x0

    invoke-virtual {v10, p0, p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    return-wide v8
.end method
