.class public final Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public evBracket:[D

.field public globalCamId:Ljava/lang/String;

.field public hdrDetected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    return-void
.end method
