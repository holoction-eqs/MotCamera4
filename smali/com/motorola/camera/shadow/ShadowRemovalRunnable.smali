.class public final Lcom/motorola/camera/shadow/ShadowRemovalRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public volatile mCancel:Z

.field public final mKey:I

.field public mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mKey:I

    iput-object p2, p0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mCancel:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;

    check-cast v1, Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/motorola/camera/shadow/ShadowRemoval;

    invoke-direct {v1}, Lcom/motorola/camera/shadow/ShadowRemoval;-><init>()V

    iget-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v3, v2, v6, v6, v6}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v9, 0x400

    const/16 v10, 0x600

    invoke-static {v3, v9, v10, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v15, 0x100

    const/16 v14, 0x180

    invoke-static {v3, v15, v14, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v11, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v11, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/high16 v11, 0x180000

    new-array v13, v11, [I

    const/16 v16, 0x0

    const/16 v17, 0x400

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x400

    const/16 v22, 0x600

    move-object/from16 v11, v19

    move-object v12, v13

    move-object/from16 v23, v13

    move/from16 v13, v16

    move v5, v14

    move/from16 v14, v17

    move v4, v15

    move/from16 v15, v18

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v11, v6

    move v12, v11

    :goto_0
    const/high16 v13, 0x437f0000    # 255.0f

    if-ge v11, v9, :cond_4

    move v14, v6

    :goto_1
    if-ge v14, v10, :cond_3

    aget v15, v23, v12

    shr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    iget-object v9, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v15, v15

    div-float/2addr v15, v13

    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    aget v9, v23, v12

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v9, v9

    div-float/2addr v9, v13

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    aget v9, v23, v12

    and-int/lit16 v9, v9, 0xff

    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v9, v9

    div-float/2addr v9, v13

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0x400

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0x400

    goto :goto_0

    :cond_4
    const v9, 0x18000

    new-array v9, v9, [I

    const/16 v22, 0x0

    const/16 v23, 0x100

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x100

    const/16 v27, 0x180

    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v11, v6

    move v12, v11

    :goto_2
    if-ge v11, v5, :cond_6

    move v14, v6

    :goto_3
    if-ge v14, v4, :cond_5

    aget v15, v9, v12

    shr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    iget-object v4, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v15, v15

    div-float/2addr v15, v13

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    aget v4, v9, v12

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    aget v4, v9, v12

    and-int/lit16 v4, v4, 0xff

    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x100

    goto :goto_2

    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    iget-object v4, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInputsShadow:[Ljava/lang/Object;

    iget-object v5, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/HashMap;)V

    iget-object v3, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/high16 v4, 0x600000

    new-array v4, v4, [B

    move v5, v6

    move v9, v5

    :goto_4
    const/16 v11, 0x5ff

    const/4 v12, 0x1

    if-gt v5, v11, :cond_e

    move v11, v6

    :goto_5
    const/16 v14, 0x3ff

    if-gt v11, v14, :cond_d

    aget-object v14, v3, v6

    aget-object v14, v14, v5

    aget-object v14, v14, v11

    aget v15, v14, v6

    const/16 v17, 0x0

    cmpg-float v18, v15, v17

    if-gez v18, :cond_7

    move/from16 v15, v17

    :cond_7
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v19, v15, v18

    if-lez v19, :cond_8

    move/from16 v15, v18

    :cond_8
    aget v19, v14, v12

    cmpg-float v20, v19, v17

    if-gez v20, :cond_9

    move/from16 v19, v17

    :cond_9
    cmpl-float v20, v19, v18

    if-lez v20, :cond_a

    move/from16 v19, v18

    :cond_a
    const/16 v20, 0x2

    aget v14, v14, v20

    cmpg-float v20, v14, v17

    if-gez v20, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v17, v14

    :goto_6
    cmpl-float v14, v17, v18

    if-lez v14, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v18, v17

    :goto_7
    add-int/lit8 v14, v9, 0x1

    mul-float/2addr v15, v13

    float-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v4, v9

    add-int/lit8 v9, v14, 0x1

    mul-float v15, v19, v13

    float-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v4, v14

    add-int/lit8 v14, v9, 0x1

    mul-float v15, v18, v13

    float-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v4, v9

    add-int/lit8 v9, v14, 0x1

    const/4 v15, -0x1

    aput-byte v15, v4, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x400

    invoke-static {v5, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_f

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-static {v4, v2, v6, v6, v12}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    goto :goto_8

    :cond_f
    move-object v3, v4

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v3, 0x0

    :cond_11
    :goto_a
    iget-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    if-nez v2, :cond_12

    goto :goto_c

    :cond_12
    iget-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lorg/tensorflow/lite/Interpreter;->close$org$tensorflow$lite$InterpreterImpl()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    :goto_b
    iget-object v4, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    :cond_14
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInputsShadow:[Ljava/lang/Object;

    iput-boolean v6, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    :goto_c
    iget-object v1, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;

    iget v2, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mKey:I

    iget-boolean v4, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mCancel:Z

    check-cast v1, Lcom/motorola/camera/editor/DocEditorActivity;

    iget-object v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v2, v1, v4, v3, v5}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalRunnable$ShadowRemovalListener;

    return-void
.end method
