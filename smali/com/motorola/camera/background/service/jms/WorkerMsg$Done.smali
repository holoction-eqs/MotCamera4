.class public final Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;
.super Lcom/motorola/camera/background/service/jms/WorkerMsg;
.source "SourceFile"


# instance fields
.field public final ack:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 1

    const-string v0, "ack"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/camera/background/service/jms/WorkerMsg;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Done(ack="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
