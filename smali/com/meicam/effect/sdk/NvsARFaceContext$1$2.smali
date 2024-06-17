.class Lcom/meicam/effect/sdk/NvsARFaceContext$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/effect/sdk/NvsARFaceContext$1;->notifyFaceItemLoadingFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsARFaceContext$1;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$2;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$2;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/effect/sdk/NvsARFaceContext;

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;->notifyFaceItemLoadingFinish()V

    :cond_0
    return-void
.end method
