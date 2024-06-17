.class public final Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public evBracket:[D

.field public hdrDetected:Z

.field public isOverexposed:Z

.field public isUnderexposed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    iput-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    return-void
.end method
