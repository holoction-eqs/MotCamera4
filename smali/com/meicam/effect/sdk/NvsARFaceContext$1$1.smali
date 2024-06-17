.class Lcom/meicam/effect/sdk/NvsARFaceContext$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/effect/sdk/NvsARFaceContext$1;->notifyFaceItemLoadingBegin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

.field final synthetic val$itemPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsARFaceContext$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$1;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$1;->val$itemPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$1;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    iget-object v0, v0, Lcom/meicam/effect/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/effect/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$1;->val$itemPath:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;->notifyFaceItemLoadingBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
