.class Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->ProcessRequest(Lcom/cdv/effect/io/NvHttpRequestManager$Request;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

.field final synthetic val$allHeaders:Ljava/lang/String;

.field final synthetic val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvHttpRequestManager$Worker;Lcom/cdv/effect/io/NvHttpRequestManager$Request;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->this$1:Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

    iput-object p2, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    iput-object p3, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->val$allHeaders:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->this$1:Lcom/cdv/effect/io/NvHttpRequestManager$Worker;

    iget-object v1, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$300(Lcom/cdv/effect/io/NvHttpRequestManager;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    iget-wide v4, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_id:J

    iget v6, v0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_responseCode:I

    iget-object v7, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Worker$2;->val$allHeaders:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$600(Lcom/cdv/effect/io/NvHttpRequestManager;JJILjava/lang/String;)V

    return-void
.end method
