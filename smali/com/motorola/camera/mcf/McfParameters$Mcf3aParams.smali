.class public final Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static lastConvergedAE:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

.field public static lastConvergedAF:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;


# instance fields
.field public final mBoost:Ljava/lang/Integer;

.field public final mExposureTime:Ljava/lang/Long;

.field public final mIso100Gain:Ljava/lang/Float;

.field public final mLensFocusDistance:Ljava/lang/Float;

.field public final mSensitivity:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xfe6500

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->lastConvergedAE:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    sput-object p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->lastConvergedAE:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    iget-object v2, v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    :goto_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    :cond_6
    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->lastConvergedAF:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    if-nez v0, :cond_8

    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    sput-object p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->lastConvergedAF:Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    goto :goto_4

    :cond_8
    iget-object p1, v0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    :goto_4
    return-void
.end method
