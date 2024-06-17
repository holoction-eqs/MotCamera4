.class public Lcom/cdv/effect/io/NvHttpRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/effect/io/NvHttpRequestManager$Worker;,
        Lcom/cdv/effect/io/NvHttpRequestManager$Request;
    }
.end annotation


# static fields
.field private static final ERROR_ABORTED:I = 0x4

.field private static final ERROR_NETWORK:I = 0x2

.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_TIMEOUT:I = 0x3

.field private static final ERROR_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Http Request Manager"

.field private static final m_bodyReadRealTimeoutMs:I = 0x2710

.field private static final m_bodyReadTimeoutMs:I = 0x1e

.field private static final m_connectionReadTimeoutMs:I = 0x2710

.field private static final m_connectionTimeoutMs:I = 0x7530


# instance fields
.field private m_exiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_handler:Landroid/os/Handler;

.field private m_managerId:J

.field private m_maxWorkerNum:I

.field private m_requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/cdv/effect/io/NvHttpRequestManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private m_requestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/io/NvHttpRequestManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private m_timer:Ljava/util/Timer;

.field private m_workers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/io/NvHttpRequestManager$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_timer:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_exiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    iput-wide p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_managerId:J

    const/4 p1, 0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_maxWorkerNum:I

    return-void
.end method

.method public static synthetic access$000(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_exiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cdv/effect/io/NvHttpRequestManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/cdv/effect/io/NvHttpRequestManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_managerId:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/cdv/effect/io/NvHttpRequestManager;JJI[BI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/cdv/effect/io/NvHttpRequestManager;->nativeRequestFinished(JJI[BI)V

    return-void
.end method

.method public static synthetic access$500(Lcom/cdv/effect/io/NvHttpRequestManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/cdv/effect/io/NvHttpRequestManager;JJILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cdv/effect/io/NvHttpRequestManager;->nativeHeaderReady(JJILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/cdv/effect/io/NvHttpRequestManager;Lcom/cdv/effect/io/NvHttpRequestManager$Request;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cdv/effect/io/NvHttpRequestManager;->appendResponseData(Lcom/cdv/effect/io/NvHttpRequestManager$Request;[BI)V

    return-void
.end method

.method public static synthetic access$800(Lcom/cdv/effect/io/NvHttpRequestManager;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cdv/effect/io/NvHttpRequestManager;->doAbortRequest(JZ)V

    return-void
.end method

.method private appendResponseData(Lcom/cdv/effect/io/NvHttpRequestManager$Request;[BI)V
    .locals 4

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseData:[B

    if-nez p0, :cond_0

    iput-object p2, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseData:[B

    iput p3, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseDataSizeInBytes:I

    return-void

    :cond_0
    iget v0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseDataSizeInBytes:I

    add-int v1, v0, p3

    new-array v2, v1, [B

    iput-object v2, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseData:[B

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseData:[B

    invoke-static {p2, v3, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p1, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseDataSizeInBytes:I

    return-void
.end method

.method private doAbortRequest(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "Http Request Manager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find request! id="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object p3, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p3, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/TimerTask;->cancel()Z

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestQueue:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private native nativeHeaderReady(JJILjava/lang/String;)V
.end method

.method private native nativeRequestFinished(JJI[BI)V
.end method


# virtual methods
.method public abortRequest(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cdv/effect/io/NvHttpRequestManager;->doAbortRequest(JZ)V

    return-void
.end method

.method public release()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cdv/effect/io/NvHttpRequestManager;->abortRequest(J)V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_exiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Http Request Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public startRequest(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJ)Z"
        }
    .end annotation

    new-instance v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    invoke-direct {v0, p0}, Lcom/cdv/effect/io/NvHttpRequestManager$Request;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager;)V

    iput-wide p1, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_id:J

    iput-object p3, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_urlStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestMethod:Ljava/lang/String;

    iput-object p5, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestHeaderMap:Ljava/util/Map;

    iput-object p6, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_requestBody:[B

    iget-object p3, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const-string p0, "Http Request Manager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Request already exists! id="

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_requestQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p3, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_maxWorkerNum:I

    if-ge p1, p3, :cond_3

    iget-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

    iget-object p3, p3, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->m_working:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_2
    move p4, p2

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    new-instance p1, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

    invoke-direct {p1, p0}, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p3, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Http Request Manager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Worker number grows to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_workers:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 p3, 0x0

    cmp-long p1, p7, p3

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_timer:Ljava/util/Timer;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_timer:Ljava/util/Timer;

    :cond_5
    new-instance p1, Lcom/cdv/effect/io/NvHttpRequestManager$1;

    invoke-direct {p1, p0, v0}, Lcom/cdv/effect/io/NvHttpRequestManager$1;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager;Lcom/cdv/effect/io/NvHttpRequestManager$Request;)V

    iput-object p1, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager;->m_timer:Ljava/util/Timer;

    invoke-virtual {p0, p1, p7, p8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6
    return p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
