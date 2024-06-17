.class Lcom/cdv/effect/io/NvHttpRequestManager$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/io/NvHttpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Request"
.end annotation


# instance fields
.field public m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m_id:J

.field public m_requestBody:[B

.field public m_requestHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_requestMethod:Ljava/lang/String;

.field public m_responseCode:I

.field public m_responseData:[B

.field public m_responseDataSizeInBytes:I

.field public m_timerTask:Ljava/util/TimerTask;

.field public m_urlStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/cdv/effect/io/NvHttpRequestManager;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvHttpRequestManager;)V
    .locals 1

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseData:[B

    iput p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseDataSizeInBytes:I

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
