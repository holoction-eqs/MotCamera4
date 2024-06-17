.class public Lcom/cdv/effect/utils/NvAndroidHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_id:I


# direct methods
.method private constructor <init>(ILandroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_id:I

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NvAndroidHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p1, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_id:I

    return-void
.end method

.method private static native notifyHandlerMessage(IIII)V
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_id:I

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/cdv/effect/utils/NvAndroidHandler;->notifyHandlerMessage(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendMessage(III)Z
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public sendMessageDelayed(IIIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/cdv/effect/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
