.class public final Lcom/motorola/camera/mcf/McfImagingModelAuxData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final mHeight:I

.field private final mLensDistortion:[F

.field private final mLensIntrinsicCalibration:[F

.field private final mWidth:I


# direct methods
.method public constructor <init>([F[FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensIntrinsicCalibration:[F

    iput-object p2, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensDistortion:[F

    iput p3, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mWidth:I

    iput p4, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mHeight:I

    return p0
.end method

.method public getLensDistortion()[F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensIntrinsicCalibration:[F

    return-object p0
.end method

.method public getLensIntrinsicCalibration()[F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensIntrinsicCalibration:[F

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mWidth:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfImagingModelAuxData{ LensIntrinsicCalibration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensIntrinsicCalibration:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LensDistortion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mLensDistortion:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->mHeight:I

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
