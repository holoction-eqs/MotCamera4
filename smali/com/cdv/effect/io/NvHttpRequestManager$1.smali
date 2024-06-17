.class Lcom/cdv/effect/io/NvHttpRequestManager$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/io/NvHttpRequestManager;->startRequest(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

.field final synthetic val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvHttpRequestManager;Lcom/cdv/effect/io/NvHttpRequestManager$Request;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    iput-object p2, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    iget-object v0, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v0}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$500(Lcom/cdv/effect/io/NvHttpRequestManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cdv/effect/io/NvHttpRequestManager$1$1;

    invoke-direct {v1, p0}, Lcom/cdv/effect/io/NvHttpRequestManager$1$1;-><init>(Lcom/cdv/effect/io/NvHttpRequestManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
