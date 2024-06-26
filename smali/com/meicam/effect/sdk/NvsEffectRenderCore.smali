.class public Lcom/meicam/effect/sdk/NvsEffectRenderCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NV_EFFECT_CORE_ERROR_UNKNOWN:I = -0x1

.field public static final NV_EFFECT_CORE_FLAGS_CREATE_GLCONTEXT_IF_NEED:I = 0x2

.field public static final NV_EFFECT_CORE_FLAGS_IN_SINGLE_GLTHREAD:I = 0x1

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_16K:I = 0x10

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_4K:I = 0x4

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_8K:I = 0x8

.field public static final NV_EFFECT_CORE_INVALID_TEXTURE:I = -0x2

.field public static final NV_EFFECT_CORE_NO_ERROR:I = 0x0

.field public static final NV_EFFECT_CORE_RENDER_FLAGS_SHOW_ANIMATED_STICKER_POSTER:I = 0x8

.field public static final NV_EFFECT_CORE_RENDER_FLAGS_SHOW_CAPTION_POSTER:I = 0x4

.field public static final NV_EFFECT_CORE_RENDER_Flags_ISFLIPHORIZONTAL:I = 0x2

.field public static final NV_EFFECT_CORE_RENDER_Flags_ISUPSIDEDOWN:I = 0x1


# instance fields
.field m_internalObject:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    return-void
.end method

.method private native nativeCleanUp(J)V
.end method

.method private native nativeClearCacheResources(J)V
.end method

.method private native nativeClearEffectResources(JLcom/meicam/effect/sdk/NvsEffect;)V
.end method

.method private native nativeDestory(J)V
.end method

.method private native nativeDownloadFromTexture(JILcom/meicam/effect/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeInitialize(JI)Z
.end method

.method private native nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[IILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I
.end method

.method private native nativeRenderEffectWithBuffer(J[Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeUploadtoTexture(J[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;I)I
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeCleanUp(J)V

    return-void
.end method

.method public clearCacheResources()V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeClearCacheResources(J)V

    return-void
.end method

.method public clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeClearEffectResources(JLcom/meicam/effect/sdk/NvsEffect;)V

    return-void
.end method

.method public downloadFromTexture(ILcom/meicam/effect/sdk/NvsVideoResolution;II)Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDownloadFromTexture(JILcom/meicam/effect/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public downloadFromTexture(ILcom/meicam/effect/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;
    .locals 8

    .line 2
    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDownloadFromTexture(JILcom/meicam/effect/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeInitialize(JI)Z

    move-result p0

    return p0
.end method

.method public initialize(I)Z
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeInitialize(JI)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDestory(J)V

    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    :cond_0
    return-void
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I
    .locals 14

    .line 1
    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-lez p2, :cond_2

    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v4

    move-object v0, p0

    iget-wide v1, v0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[IILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I
    .locals 14

    .line 2
    if-eqz p1, :cond_3

    if-nez p6, :cond_0

    goto :goto_1

    :cond_0
    if-lez p2, :cond_2

    if-gtz p7, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v4

    move-object v0, p0

    iget-wide v1, v0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v5, 0x1

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[IILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;I[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I
    .locals 12

    .line 3
    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    move-result v0

    return v0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[IILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I
    .locals 14

    .line 4
    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-gtz p5, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    iget-wide v1, v0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[IILjava/nio/ByteBuffer;Lcom/meicam/effect/sdk/NvsVideoFrameInfo;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x2

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;
    .locals 12

    .line 5
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/meicam/effect/sdk/NvsEffect;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    move-object v0, p0

    iget-wide v1, v0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffectWithBuffer(J[Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public renderEffects([Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;
    .locals 12

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    iget-wide v1, v0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffectWithBuffer(J[Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInternalObject(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    return-void
.end method

.method public uploadVideoFrameToTexture([BLcom/meicam/effect/sdk/NvsVideoFrameInfo;I)I
    .locals 6

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeUploadtoTexture(J[BLcom/meicam/effect/sdk/NvsVideoFrameInfo;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
