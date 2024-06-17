.class public final Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_ALLOW:L_COROUTINE/ArtificialStackFrames;

.field public static final NO_OP_CALLBACK:Lkotlin/UByte$Companion;


# instance fields
.field public final contentBasedSeedColor:Ljava/lang/Integer;

.field public final onAppliedCallback:Lkotlin/UByte$Companion;

.field public final precondition:L_COROUTINE/ArtificialStackFrames;

.field public final themeOverlay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1}, L_COROUTINE/ArtificialStackFrames;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:L_COROUTINE/ArtificialStackFrames;

    new-instance v0, Lkotlin/UByte$Companion;

    invoke-direct {v0, v2}, Lkotlin/UByte$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lkotlin/UByte$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget v2, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    iput v2, v0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    iget-object v2, v1, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    check-cast v2, L_COROUTINE/ArtificialStackFrames;

    iput-object v2, v0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:L_COROUTINE/ArtificialStackFrames;

    iget-object v2, v1, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v2, Lkotlin/UByte$Companion;

    iput-object v2, v0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lkotlin/UByte$Companion;

    iget-object v1, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v8, v9

    new-array v10, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v2, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {v2}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    aget v7, v10, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v6, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x8c61

    new-array v7, v5, [I

    iput-object v7, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    new-array v7, v5, [I

    iput-object v7, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    new-array v7, v5, [I

    iput-object v7, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    new-array v7, v5, [I

    iput-object v7, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    new-array v5, v5, [D

    iput-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v11, v8, 0x3

    add-int/2addr v11, v6

    shr-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v6

    shr-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v6

    invoke-static {v11, v12, v13}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v11

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v12, [I

    aget v13, v12, v11

    add-int/2addr v13, v5

    aput v13, v12, v11

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v12, [I

    aget v13, v12, v11

    mul-int v14, v8, v5

    add-int/2addr v14, v13

    aput v14, v12, v11

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v12, [I

    aget v13, v12, v11

    mul-int v14, v9, v5

    add-int/2addr v14, v13

    aput v14, v12, v11

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v12, [I

    aget v13, v12, v11

    mul-int v14, v7, v5

    add-int/2addr v14, v13

    aput v14, v12, v11

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v12, [D

    aget-wide v13, v12, v11

    mul-int/2addr v8, v8

    mul-int/2addr v9, v9

    add-int/2addr v9, v8

    mul-int/2addr v7, v7

    add-int/2addr v7, v9

    mul-int/2addr v7, v5

    int-to-double v7, v7

    add-double/2addr v13, v7

    aput-wide v13, v12, v11

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_3
    const/16 v5, 0x21

    if-ge v3, v5, :cond_5

    new-array v9, v5, [I

    new-array v11, v5, [I

    new-array v12, v5, [I

    new-array v13, v5, [I

    new-array v14, v5, [D

    move v15, v6

    :goto_4
    if-ge v15, v5, :cond_4

    move v8, v4

    move/from16 v18, v8

    move/from16 v19, v18

    move/from16 v20, v19

    move v7, v6

    const-wide/16 v16, 0x0

    :goto_5
    if-ge v7, v5, :cond_3

    invoke-static {v3, v15, v7}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v21

    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v21

    add-int/2addr v8, v5

    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v21

    add-int v18, v18, v5

    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v21

    add-int v19, v19, v5

    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v21

    add-int v20, v20, v5

    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    aget-wide v22, v5, v21

    add-double v16, v16, v22

    aget v5, v9, v7

    add-int/2addr v5, v8

    aput v5, v9, v7

    aget v5, v11, v7

    add-int v5, v5, v18

    aput v5, v11, v7

    aget v5, v12, v7

    add-int v5, v5, v19

    aput v5, v12, v7

    aget v5, v13, v7

    add-int v5, v5, v20

    aput v5, v13, v7

    aget-wide v22, v14, v7

    add-double v22, v22, v16

    aput-wide v22, v14, v7

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5, v15, v7}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v5

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v6, [I

    aget v23, v6, v5

    aget v24, v9, v7

    add-int v23, v23, v24

    aput v23, v6, v21

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v6, [I

    aget v23, v6, v5

    aget v24, v11, v7

    add-int v23, v23, v24

    aput v23, v6, v21

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v6, [I

    aget v23, v6, v5

    aget v24, v12, v7

    add-int v23, v23, v24

    aput v23, v6, v21

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v6, [I

    aget v23, v6, v5

    aget v24, v13, v7

    add-int v23, v23, v24

    aput v23, v6, v21

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v6, [D

    aget-wide v23, v6, v5

    aget-wide v25, v14, v7

    add-double v23, v23, v25

    aput-wide v23, v6, v21

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_5
    const/16 v3, 0x80

    new-array v5, v3, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    iput-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_6

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v6, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    new-instance v7, Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    invoke-direct {v7}, Lcom/google/android/material/color/utilities/QuantizerWu$Box;-><init>()V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    new-array v5, v3, [D

    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v6, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v6, v6, v4

    const/16 v7, 0x20

    iput v7, v6, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v7, v6, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iput v7, v6, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    move v7, v4

    const/4 v6, 0x1

    :goto_7
    if-ge v6, v3, :cond_13

    iget-object v9, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v9, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v15, v9, v7

    aget-object v9, v9, v6

    iget-object v11, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v11, [I

    invoke-static {v15, v11}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v20

    iget-object v11, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v11, [I

    invoke-static {v15, v11}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v21

    iget-object v11, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v11, [I

    invoke-static {v15, v11}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v23

    iget-object v11, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v11, [I

    invoke-static {v15, v11}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v24

    const/16 v25, 0x1

    iget v11, v15, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    const/4 v12, 0x1

    add-int/lit8 v14, v11, 0x1

    iget v13, v15, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    move-object v11, v2

    move-object v12, v15

    move/from16 v16, v13

    move/from16 v13, v25

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v23

    move/from16 v19, v24

    invoke-virtual/range {v11 .. v19}, Lcom/airbnb/lottie/manager/FontAssetManager;->maximize$enumunboxing$(Lcom/google/android/material/color/utilities/QuantizerWu$Box;IIIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v15

    const/16 v26, 0x2

    iget v11, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    const/4 v12, 0x1

    add-int/lit8 v14, v11, 0x1

    iget v13, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    move-object v11, v2

    move-object v12, v3

    move/from16 v16, v13

    move/from16 v13, v26

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-virtual/range {v11 .. v19}, Lcom/airbnb/lottie/manager/FontAssetManager;->maximize$enumunboxing$(Lcom/google/android/material/color/utilities/QuantizerWu$Box;IIIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v15

    const/16 v27, 0x3

    iget v11, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    const/4 v12, 0x1

    add-int/lit8 v14, v11, 0x1

    iget v13, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    move-object v11, v2

    move-object v12, v3

    move/from16 v16, v13

    move/from16 v13, v27

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-virtual/range {v11 .. v19}, Lcom/airbnb/lottie/manager/FontAssetManager;->maximize$enumunboxing$(Lcom/google/android/material/color/utilities/QuantizerWu$Box;IIIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v11

    iget-wide v12, v4, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    iget-wide v14, v8, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    cmpl-double v16, v12, v14

    iget v4, v4, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    move/from16 v17, v1

    iget-wide v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    if-ltz v16, :cond_7

    cmpl-double v16, v12, v0

    if-ltz v16, :cond_7

    if-gez v4, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_c

    :cond_7
    cmpl-double v12, v14, v12

    if-ltz v12, :cond_8

    cmpl-double v0, v14, v0

    if-ltz v0, :cond_8

    move/from16 v25, v26

    goto :goto_8

    :cond_8
    move/from16 v25, v27

    :cond_9
    :goto_8
    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v1, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iput v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    goto :goto_a

    :cond_b
    iget v0, v8, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    goto :goto_9

    :cond_c
    iput v4, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v4, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    :goto_9
    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    :goto_a
    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    :goto_b
    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v4, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v4

    mul-int/2addr v1, v0

    iget v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v4, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v0, v4

    mul-int/2addr v0, v1

    iput v0, v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    iget v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v3

    mul-int/2addr v1, v0

    iget v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v3, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v0, v3

    mul-int/2addr v0, v1

    iput v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v0, v0, v7

    iget v1, v0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_d

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v0

    goto :goto_d

    :cond_d
    const-wide/16 v0, 0x0

    :goto_d
    aput-wide v0, v5, v7

    iget-object v0, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v0, v0, v6

    iget v1, v0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    if-le v1, v3, :cond_e

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v0

    goto :goto_e

    :cond_e
    const-wide/16 v0, 0x0

    :goto_e
    aput-wide v0, v5, v6

    goto :goto_f

    :cond_f
    const-wide/16 v0, 0x0

    aput-wide v0, v5, v7

    add-int/lit8 v6, v6, -0x1

    :goto_f
    const/4 v0, 0x0

    aget-wide v3, v5, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    :goto_10
    if-gt v0, v6, :cond_11

    aget-wide v8, v5, v0

    cmpl-double v1, v8, v3

    if-lez v1, :cond_10

    move v7, v0

    move-wide v3, v8

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_11
    const-wide/16 v0, 0x0

    cmpg-double v3, v3, v0

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    add-int/2addr v6, v3

    goto :goto_11

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    const/16 v3, 0x80

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_13
    move/from16 v17, v1

    const-wide/16 v0, 0x0

    const/16 v6, 0x80

    :goto_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_12
    const/high16 v5, -0x1000000

    if-ge v4, v6, :cond_15

    iget-object v7, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v7, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v7, v7, v4

    iget-object v8, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v8, [I

    invoke-static {v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v8

    if-lez v8, :cond_14

    iget-object v9, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v9, [I

    invoke-static {v7, v9}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v9

    div-int/2addr v9, v8

    iget-object v11, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v11, [I

    invoke-static {v7, v11}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v11

    div-int/2addr v11, v8

    iget-object v12, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v12, [I

    invoke-static {v7, v12}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v7

    div-int/2addr v7, v8

    and-int/lit16 v8, v9, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    and-int/lit16 v8, v11, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_15
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_16
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v3, [I

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    move v6, v8

    goto :goto_14

    :cond_17
    new-instance v2, Ljava/util/Random;

    const-wide/32 v6, 0x42688

    invoke-direct {v2, v6, v7}, Ljava/util/Random;-><init>(J)V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v8, v17

    new-array v7, v8, [[D

    new-array v9, v8, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_15
    const/4 v13, 0x3

    if-ge v11, v8, :cond_19

    aget v14, v10, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_18

    invoke-static {v14}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object v15

    new-array v13, v13, [D

    const/16 v16, 0x0

    aget-wide v17, v15, v16

    aput-wide v17, v13, v16

    const/16 v16, 0x1

    aget-wide v17, v15, v16

    aput-wide v17, v13, v16

    const/16 v17, 0x2

    aget-wide v18, v15, v17

    aput-wide v18, v13, v17

    aput-object v13, v7, v12

    aput v14, v9, v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_16

    :cond_18
    const/16 v16, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_16
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_19
    new-array v8, v12, [I

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v12, :cond_1a

    aget v11, v9, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_1a
    const/16 v10, 0x80

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v3, :cond_1b

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1b
    new-array v9, v6, [[D

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_18
    if-ge v10, v3, :cond_1c

    aget v14, v4, v10

    invoke-static {v14}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object v14

    new-array v15, v13, [D

    const/16 v16, 0x0

    aget-wide v17, v14, v16

    aput-wide v17, v15, v16

    const/16 v16, 0x1

    aget-wide v17, v14, v16

    aput-wide v17, v15, v16

    const/16 v16, 0x2

    aget-wide v17, v14, v16

    aput-wide v17, v15, v16

    aput-object v15, v9, v10

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_1c
    sub-int v3, v6, v11

    if-lez v3, :cond_1d

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_1d

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_1d
    new-array v3, v12, [I

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v12, :cond_1e

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aput v10, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_1e
    new-array v2, v6, [[I

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v6, :cond_1f

    new-array v10, v6, [I

    aput-object v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1f
    new-array v4, v6, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v6, :cond_21

    new-array v11, v6, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    aput-object v11, v4, v10

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v6, :cond_20

    aget-object v14, v4, v10

    new-instance v15, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    invoke-direct {v15}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    aput-object v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_21
    new-array v10, v6, [I

    const/4 v11, 0x0

    :goto_1e
    const/16 v14, 0xa

    if-ge v11, v14, :cond_2e

    const/4 v14, 0x0

    :goto_1f
    if-ge v14, v6, :cond_24

    add-int/lit8 v15, v14, 0x1

    move v0, v15

    :goto_20
    if-ge v0, v6, :cond_22

    aget-object v1, v9, v14

    aget-object v5, v9, v0

    move-object/from16 v16, v10

    move/from16 v17, v11

    invoke-static {v1, v5}, Lcom/adobe/xmp/XMPMetaFactory$1;->distance([D[D)D

    move-result-wide v10

    aget-object v1, v4, v0

    aget-object v1, v1, v14

    iput-wide v10, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    iput v14, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    aget-object v1, v4, v14

    aget-object v1, v1, v0

    iput-wide v10, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    iput v0, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v16

    move/from16 v11, v17

    const/high16 v5, -0x1000000

    goto :goto_20

    :cond_22
    move-object/from16 v16, v10

    move/from16 v17, v11

    aget-object v0, v4, v14

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v6, :cond_23

    aget-object v1, v2, v14

    aget-object v5, v4, v14

    aget-object v5, v5, v0

    iget v5, v5, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_23
    move v14, v15

    move-object/from16 v10, v16

    move/from16 v11, v17

    const-wide/16 v0, 0x0

    const/high16 v5, -0x1000000

    goto :goto_1f

    :cond_24
    move-object/from16 v16, v10

    move/from16 v17, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_22
    if-ge v0, v12, :cond_29

    aget-object v5, v7, v0

    aget v10, v3, v0

    aget-object v11, v9, v10

    invoke-static {v5, v11}, Lcom/adobe/xmp/XMPMetaFactory$1;->distance([D[D)D

    move-result-wide v14

    move-object/from16 v19, v2

    move-wide/from16 v20, v14

    const/4 v2, -0x1

    const/4 v13, 0x0

    :goto_23
    if-ge v13, v6, :cond_27

    aget-object v23, v4, v10

    aget-object v11, v23, v13

    move/from16 v23, v10

    iget-wide v10, v11, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    mul-double v25, v25, v14

    cmpl-double v10, v10, v25

    if-ltz v10, :cond_25

    goto :goto_24

    :cond_25
    aget-object v10, v9, v13

    invoke-static {v5, v10}, Lcom/adobe/xmp/XMPMetaFactory$1;->distance([D[D)D

    move-result-wide v10

    cmpg-double v25, v10, v20

    if-gez v25, :cond_26

    move-wide/from16 v20, v10

    move v2, v13

    :cond_26
    :goto_24
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v23

    goto :goto_23

    :cond_27
    const/4 v10, -0x1

    if-eq v2, v10, :cond_28

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    sub-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    cmpl-double v5, v10, v13

    if-lez v5, :cond_28

    add-int/lit8 v1, v1, 0x1

    aput v2, v3, v0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v19

    const/4 v13, 0x3

    goto :goto_22

    :cond_29
    move-object/from16 v19, v2

    if-nez v1, :cond_2a

    if-eqz v17, :cond_2a

    move-object/from16 v10, v16

    goto/16 :goto_28

    :cond_2a
    new-array v0, v6, [D

    new-array v1, v6, [D

    new-array v2, v6, [D

    move-object/from16 v10, v16

    const/4 v5, 0x0

    invoke-static {v10, v5}, Ljava/util/Arrays;->fill([II)V

    move v11, v5

    :goto_25
    if-ge v11, v12, :cond_2b

    aget v13, v3, v11

    aget-object v14, v7, v11

    aget v15, v8, v11

    aget v16, v10, v13

    add-int v16, v16, v15

    aput v16, v10, v13

    aget-wide v20, v0, v13

    aget-wide v23, v14, v5

    move-object v5, v3

    move-object/from16 v16, v4

    int-to-double v3, v15

    mul-double v23, v23, v3

    add-double v23, v23, v20

    aput-wide v23, v0, v13

    aget-wide v20, v1, v13

    const/4 v15, 0x1

    aget-wide v23, v14, v15

    mul-double v23, v23, v3

    add-double v23, v23, v20

    aput-wide v23, v1, v13

    aget-wide v20, v2, v13

    const/4 v15, 0x2

    aget-wide v23, v14, v15

    mul-double v23, v23, v3

    add-double v23, v23, v20

    aput-wide v23, v2, v13

    add-int/lit8 v11, v11, 0x1

    move-object v3, v5

    move-object/from16 v4, v16

    const/4 v5, 0x0

    goto :goto_25

    :cond_2b
    move-object v5, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v6, :cond_2d

    aget v4, v10, v3

    const/4 v11, 0x3

    if-nez v4, :cond_2c

    new-array v4, v11, [D

    fill-array-data v4, :array_0

    aput-object v4, v9, v3

    move v15, v12

    goto :goto_27

    :cond_2c
    aget-wide v13, v0, v3

    move v15, v12

    int-to-double v11, v4

    div-double/2addr v13, v11

    aget-wide v20, v1, v3

    div-double v20, v20, v11

    aget-wide v23, v2, v3

    div-double v23, v23, v11

    aget-object v4, v9, v3

    const/4 v11, 0x0

    aput-wide v13, v4, v11

    const/4 v11, 0x1

    aput-wide v20, v4, v11

    const/4 v11, 0x2

    aput-wide v23, v4, v11

    :goto_27
    add-int/lit8 v3, v3, 0x1

    move v12, v15

    goto :goto_26

    :cond_2d
    move v15, v12

    add-int/lit8 v11, v17, 0x1

    move-object v3, v5

    move-object/from16 v4, v16

    move-object/from16 v2, v19

    const-wide/16 v0, 0x0

    const/high16 v5, -0x1000000

    const/4 v13, 0x3

    goto/16 :goto_1e

    :cond_2e
    :goto_28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v6, :cond_31

    aget v2, v10, v1

    if-nez v2, :cond_2f

    const/high16 v7, -0x1000000

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto/16 :goto_2a

    :cond_2f
    aget-object v3, v9, v1

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    const/4 v4, 0x1

    aget-wide v11, v3, v4

    const/4 v4, 0x2

    aget-wide v13, v3, v4

    sget-object v3, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    add-double/2addr v7, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v7, v4

    const-wide v4, 0x407f400000000000L    # 500.0

    div-double/2addr v11, v4

    add-double/2addr v11, v7

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    div-double/2addr v13, v4

    sub-double v4, v7, v13

    invoke-static {v11, v12}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v7

    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v4

    const/4 v13, 0x0

    aget-wide v14, v3, v13

    mul-double/2addr v11, v14

    const/4 v14, 0x1

    aget-wide v15, v3, v14

    mul-double/2addr v7, v15

    const/4 v15, 0x2

    aget-wide v16, v3, v15

    mul-double v4, v4, v16

    sget-object v3, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    aget-object v16, v3, v13

    aget-wide v17, v16, v13

    mul-double v17, v17, v11

    aget-wide v20, v16, v14

    mul-double v20, v20, v7

    add-double v20, v20, v17

    aget-wide v16, v16, v15

    mul-double v16, v16, v4

    add-double v16, v16, v20

    aget-object v18, v3, v14

    aget-wide v20, v18, v13

    mul-double v20, v20, v11

    aget-wide v22, v18, v14

    mul-double v22, v22, v7

    add-double v22, v22, v20

    aget-wide v18, v18, v15

    mul-double v18, v18, v4

    add-double v18, v18, v22

    aget-object v3, v3, v15

    aget-wide v20, v3, v13

    mul-double v20, v20, v11

    aget-wide v11, v3, v14

    mul-double/2addr v11, v7

    add-double v11, v11, v20

    aget-wide v7, v3, v15

    mul-double/2addr v7, v4

    add-double/2addr v7, v11

    invoke-static/range {v16 .. v17}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v3

    invoke-static/range {v18 .. v19}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v4

    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v3, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_2a

    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    :cond_31
    const/4 v14, 0x1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2b

    :cond_32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x169

    new-array v4, v4, [D

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v7, v5

    div-double/2addr v7, v2

    invoke-static {v6}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v5, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    aget-wide v9, v4, v5

    add-double/2addr v9, v7

    aput-wide v9, v4, v5

    goto :goto_2c

    :cond_33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/Cam16;

    iget-wide v6, v3, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v3, v6

    add-int/lit8 v6, v3, -0xf

    move v8, v6

    const-wide/16 v6, 0x0

    :goto_2e
    add-int/lit8 v9, v3, 0xf

    if-ge v8, v9, :cond_35

    rem-int/lit16 v9, v8, 0x168

    if-gez v9, :cond_34

    add-int/lit16 v9, v9, 0x168

    :cond_34
    aget-wide v9, v4, v9

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Cam16;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    iget-wide v8, v4, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    cmpg-double v4, v8, v10

    if-gez v4, :cond_37

    const-wide v12, 0x3fb999999999999aL    # 0.1

    goto :goto_30

    :cond_37
    const-wide v12, 0x3fd3333333333333L    # 0.3

    :goto_30
    sub-double/2addr v8, v10

    mul-double/2addr v8, v12

    add-double/2addr v8, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/Cam16;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-wide v11, v5, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    cmpl-double v5, v11, v6

    if-ltz v5, :cond_39

    invoke-static {v8}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v5

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    cmpl-double v5, v5, v11

    if-ltz v5, :cond_39

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v9, v5

    if-ltz v5, :cond_39

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_3a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Cam16;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/color/utilities/Cam16;

    iget-wide v9, v4, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    iget-wide v11, v8, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v10, v8

    cmpg-double v8, v10, v6

    if-gez v8, :cond_3c

    move v12, v14

    goto :goto_34

    :cond_3d
    const/4 v12, 0x0

    :goto_34
    if-eqz v12, :cond_3e

    goto :goto_33

    :cond_3e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    const v1, -0xbd7a0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    :cond_41
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
