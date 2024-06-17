.class public abstract Lcom/motorola/camera/panorama/PanoCallable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBegin:J

.field public final mListener:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract call()Lcom/motorola/camera/panorama/PanoCallableReturn;
.end method

.method public callback(Lcom/motorola/camera/panorama/PanoCallableReturn;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/panorama/PanoCallable;->mBegin:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/panorama/PanoCallableListener;

    iget-object v3, p1, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lcom/motorola/camera/panorama/PanoSaveCallable;

    xor-int/lit8 v3, v3, 0x1

    iget-object p1, p1, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/panorama/PanoCallable;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in result (dur:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/motorola/camera/panorama/PanoCallableListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p1, Lcom/motorola/camera/panorama/PanoCallableReturn;->value:Ljava/lang/Object;

    invoke-interface {v2, p0}, Lcom/motorola/camera/panorama/PanoCallableListener;->onComplete(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
