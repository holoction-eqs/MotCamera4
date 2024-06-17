.class public final Lcom/motorola/camera/mcf/McfParameters$ModelConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mode:Ljava/lang/Object;

.field public final model:Ljava/lang/Object;

.field public performance:I

.field public final periodMs:I

.field public final priority:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->model:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->periodMs:I

    iput p3, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->priority:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->mode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/shared/ai/model/McfMlModel;Lcom/motorola/camera/mcf/McfParameters$Modes;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->model:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->mode:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->periodMs:I

    iput p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->priority:I

    iput p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    return-void
.end method


# virtual methods
.method public final generateNewId()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->periodMs:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->priority:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->model:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->mode:Ljava/lang/Object;

    return-void
.end method

.method public final getFormatId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->mode:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final maybeThrowUninitializedError()V
    .locals 1

    iget p0, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateNewId() must be called before retrieving ids."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
