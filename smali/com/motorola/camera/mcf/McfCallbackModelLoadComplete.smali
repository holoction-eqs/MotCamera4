.class public final Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public mStatus:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackModelLoadComplete:{model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mStatus:I

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
