.class public final Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackBSTDrsd:{hdr-detected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",is-overexposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",is-underexposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ev-bracket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
