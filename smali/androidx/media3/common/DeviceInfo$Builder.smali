.class public final Landroidx/media3/common/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public maxVolume:I

.field public minVolume:I

.field public final playbackType:I

.field public routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v12, p1

    const/4 v1, 0x1

    iput v1, v0, Landroidx/media3/common/DeviceInfo$Builder;->$r8$classId:I

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v1, [I

    const v3, 0x8b87

    invoke-static {v12, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    new-array v13, v1, [I

    new-array v14, v1, [I

    const/4 v15, 0x0

    aget v11, v2, v15

    new-array v10, v11, [B

    new-array v4, v1, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v11

    move-object v6, v14

    move-object v8, v13

    move-object/from16 p2, v10

    move v15, v11

    move/from16 v11, v16

    .line 2
    invoke-static/range {v1 .. v11}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    const-string v1, "glGetActiveUniform"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/String;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v15, :cond_1

    move-object/from16 v2, p2

    .line 4
    aget-byte v3, v2, v11

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    move-object/from16 p2, v2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    move v11, v15

    :goto_1
    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, v0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    .line 6
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const-string v2, "glGetUniformLocation"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 7
    iput v1, v0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    aget v1, v13, v3

    iput v1, v0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    aget v1, v14, v3

    iput v1, v0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    iput p2, p0, Landroidx/media3/common/DeviceInfo$Builder;->$r8$classId:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x195

    iput p2, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    const p2, 0x55d71eb

    iput p2, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    iput p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    if-lez p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final checkUniformAssignment(II)V
    .locals 3

    rem-int v0, p1, p2

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    div-int p2, p1, p2

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Size mismatch: Cannot assign "

    const-string v1, " values to uniform \'"

    invoke-static {v0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    const-string v0, "\'!"

    invoke-static {p1, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size mismatch: Attempting to assign values of size "

    const-string v2, " to uniform \'"

    invoke-static {v1, p1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (must be multiple of "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/common/DeviceInfo$Builder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheFileHeader{mVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
