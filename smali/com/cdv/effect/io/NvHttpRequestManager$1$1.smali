.class Lcom/cdv/effect/io/NvHttpRequestManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/io/NvHttpRequestManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cdv/effect/io/NvHttpRequestManager$1;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvHttpRequestManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1$1;->this$1:Lcom/cdv/effect/io/NvHttpRequestManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1$1;->this$1:Lcom/cdv/effect/io/NvHttpRequestManager$1;

    iget-object v0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->this$0:Lcom/cdv/effect/io/NvHttpRequestManager;

    iget-object p0, p0, Lcom/cdv/effect/io/NvHttpRequestManager$1;->val$req:Lcom/cdv/effect/io/NvHttpRequestManager$Request;

    iget-wide v1, p0, Lcom/cdv/effect/io/NvHttpRequestManager$Request;->m_id:J

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/cdv/effect/io/NvHttpRequestManager;->access$800(Lcom/cdv/effect/io/NvHttpRequestManager;JZ)V

    return-void
.end method
