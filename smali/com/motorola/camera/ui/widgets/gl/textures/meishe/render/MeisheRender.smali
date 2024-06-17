.class public final Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;


# static fields
.field public static final EFFECT_FILTERS:Ljava/util/ArrayList;

.field public static final FRAME_FILTERS:Ljava/util/ArrayList;

.field public static final LICENSE_FILES:Ljava/util/ArrayList;

.field public static final mEffectFilterUuid:Ljava/util/ArrayList;

.field public static final mFrameFilterUuid:Ljava/util/ArrayList;


# instance fields
.field public final effectNames:Lcom/google/common/collect/RegularImmutableMap;

.field public final mAnimatedStickerEffect:Ljava/util/ArrayList;

.field public mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

.field public mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

.field public mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mEffectRenderInit:Z

.field public mInitFinished:Z

.field public volatile mPreviousEffectIndex:I

.field public mSelectedEffectIndex:I

.field public mSelectedFrameIndex:I

.field public mTimeStamp:J

.field public final mVideoFxAssetEffect:Ljava/util/ArrayList;

.field public final mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    new-instance v1, Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-direct {v1}, Lcom/meicam/effect/sdk/NvsVideoResolution;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "DD16A691-77FE-4452-944C-6F7423C720C0"

    const-string v2, "BROKEN"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "0A3FC1AC-3918-4D65-9649-147E692D20B7"

    const-string v2, "FROST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "C1E6744B-A8CA-4A37-8FB0-1A2E1A79B252"

    const-string v2, "FREEZE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "07340B0D-4DF1-4131-81EF-45684DEC6EAC"

    const-string v2, "FOG"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "36DC27E8-48CF-4F62-BCB9-820773367743"

    const-string v2, "SIMPLE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "0A3D2B0B-8ED5-4994-895B-CC156209BD80"

    const-string v2, "CARTOON"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "E2AAEC58-4CEF-4659-8117-81B681307405"

    const-string v2, "RETRO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method

.method public static loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final drawFrameToGlView(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mTimeStamp:J

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz v4, :cond_c

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget v6, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iget v5, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-nez v8, :cond_2

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    :cond_2
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    iput-wide v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    :cond_3
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    sub-long/2addr v2, v7

    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const-wide/16 v9, 0x3e8

    mul-long/2addr v2, v9

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-nez v7, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v7

    if-nez v7, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v7, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput v6, v10, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iput v5, v10, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v4

    new-instance v6, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v6, v5, v5}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    const-string v5, "Transform 2D"

    invoke-virtual {v4, v5, v6}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v4

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_8

    if-ne v1, v5, :cond_7

    goto :goto_0

    :cond_7
    move v7, v1

    goto :goto_1

    :cond_8
    :goto_0
    add-int/lit16 v7, v1, 0xb4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rem-int/lit16 v7, v7, 0x168

    :goto_1
    int-to-double v9, v7

    const-string v7, "Rotation"

    invoke-virtual {v4, v7, v9, v10}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/16 v19, 0x0

    const/16 v18, 0x0

    move-object v12, v4

    move/from16 v13, p1

    move/from16 v15, p2

    move-wide/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/4 v14, 0x0

    move-object v15, v7

    move-object v7, v9

    move/from16 v9, p2

    move/from16 v11, p1

    move-wide v12, v2

    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    if-eq v1, v6, :cond_9

    if-ne v1, v5, :cond_a

    :cond_9
    add-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    :cond_a
    neg-int v1, v1

    int-to-double v5, v1

    invoke-virtual {v4, v15, v5, v6}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    move-object v12, v4

    move/from16 v13, p1

    move/from16 v15, p2

    move-wide/from16 v16, v2

    move/from16 v18, v19

    invoke-virtual/range {v11 .. v18}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    goto :goto_2

    :cond_b
    const/4 v14, 0x0

    move/from16 v9, p1

    move/from16 v11, p2

    move-wide v12, v2

    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    :cond_c
    :goto_2
    return-void
.end method

.method public final switchFrameIndex(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p1, v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsEffect;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    const/4 p1, 0x1

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_3
    :goto_0
    return-void
.end method
