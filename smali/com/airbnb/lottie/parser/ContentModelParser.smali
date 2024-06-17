.class public abstract Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v2, 0x2

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    sget-object v4, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v4

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    return-object v6

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xca7

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-eq v6, v7, :cond_1e

    const/16 v7, 0xcc6

    if-eq v6, v7, :cond_1c

    const/16 v7, 0xcdf

    if-eq v6, v7, :cond_1a

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_18

    const/16 v7, 0xe3e

    if-eq v6, v7, :cond_16

    const/16 v7, 0xe55

    if-eq v6, v7, :cond_14

    const/16 v7, 0xe5f

    if-eq v6, v7, :cond_12

    const/16 v7, 0xe61

    if-eq v6, v7, :cond_10

    const/16 v7, 0xe79

    if-eq v6, v7, :cond_e

    const/16 v7, 0xe7e

    if-eq v6, v7, :cond_c

    const/16 v7, 0xceb

    if-eq v6, v7, :cond_a

    const/16 v7, 0xcec

    if-eq v6, v7, :cond_8

    const/16 v7, 0xe31

    if-eq v6, v7, :cond_6

    const/16 v7, 0xe32

    if-eq v6, v7, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v6, "rd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x7

    goto/16 :goto_3

    :cond_6
    const-string v6, "rc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    :cond_7
    move v6, v8

    goto/16 :goto_3

    :cond_8
    const-string v6, "gs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_2

    :cond_9
    move v6, v9

    goto/16 :goto_3

    :cond_a
    const-string v6, "gr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    move v6, v11

    goto/16 :goto_3

    :cond_c
    const-string v6, "tr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0xd

    goto/16 :goto_3

    :cond_e
    const-string v6, "tm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v6, 0xc

    goto/16 :goto_3

    :cond_10
    const-string v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_2

    :cond_11
    const/16 v6, 0xb

    goto :goto_3

    :cond_12
    const-string v6, "sr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_2

    :cond_13
    const/16 v6, 0xa

    goto :goto_3

    :cond_14
    const-string v6, "sh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_2

    :cond_15
    const/16 v6, 0x9

    goto :goto_3

    :cond_16
    const-string v6, "rp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_2

    :cond_17
    const/16 v6, 0x8

    goto :goto_3

    :cond_18
    const-string v6, "mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_2

    :cond_19
    move v6, v10

    goto :goto_3

    :cond_1a
    const-string v6, "gf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_2

    :cond_1b
    move v6, v2

    goto :goto_3

    :cond_1c
    const-string v6, "fl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_2

    :cond_1d
    move v6, v5

    goto :goto_3

    :cond_1e
    const-string v6, "el"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_1f
    move v6, v12

    :goto_3
    const/16 v7, 0x64

    const-string v13, "o"

    const-string v14, "g"

    const-string v15, "d"

    const/16 v16, 0x0

    packed-switch v6, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_29

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_1
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move v15, v12

    move/from16 v19, v15

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    if-eqz v3, :cond_27

    if-eq v3, v5, :cond_26

    if-eq v3, v2, :cond_25

    if-eq v3, v11, :cond_24

    if-eq v3, v9, :cond_21

    if-eq v3, v10, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_4

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v19

    goto :goto_4

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-eq v3, v5, :cond_23

    if-ne v3, v2, :cond_22

    move v15, v2

    goto :goto_4

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v1, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v15, v5

    goto :goto_4

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_25
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    goto :goto_4

    :cond_26
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v17

    goto :goto_4

    :cond_27
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v16

    goto :goto_4

    :cond_28
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    goto/16 :goto_2a

    :pswitch_2
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move v6, v12

    move v8, v6

    move/from16 v27, v8

    move/from16 v26, v16

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_36

    sget-object v9, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2b

    sget-object v11, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v11

    if-eqz v11, :cond_2a

    if-eq v11, v5, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_7

    :cond_29
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    goto :goto_7

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v7, :cond_30

    const/16 v7, 0x67

    if-eq v11, v7, :cond_2e

    const/16 v7, 0x6f

    if-eq v11, v7, :cond_2c

    goto :goto_8

    :cond_2c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_8

    :cond_2d
    move v7, v2

    goto :goto_9

    :cond_2e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_8

    :cond_2f
    move v7, v5

    goto :goto_9

    :cond_30
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    :goto_8
    const/4 v7, -0x1

    goto :goto_9

    :cond_31
    move v7, v12

    :goto_9
    if-eqz v7, :cond_33

    if-eq v7, v5, :cond_33

    if-eq v7, v2, :cond_32

    goto :goto_a

    :cond_32
    move-object/from16 v19, v9

    goto :goto_a

    :cond_33
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    const/16 v7, 0x64

    goto :goto_6

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_35

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v27

    goto :goto_b

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v9

    double-to-float v7, v9

    move/from16 v26, v7

    goto :goto_b

    :pswitch_6
    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v8

    sub-int/2addr v8, v5

    aget v8, v7, v8

    goto :goto_c

    :pswitch_7
    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v7

    sub-int/2addr v7, v5

    aget v6, v6, v7

    goto :goto_b

    :pswitch_8
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v4

    goto :goto_b

    :pswitch_9
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v23

    goto :goto_b

    :pswitch_a
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v21

    goto :goto_b

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v18

    :cond_35
    :goto_b
    const/4 v7, 0x3

    move v11, v7

    :goto_c
    const/16 v7, 0x64

    goto/16 :goto_5

    :cond_36
    if-nez v4, :cond_37

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    move-object/from16 v22, v1

    goto :goto_d

    :cond_37
    move-object/from16 v22, v4

    :goto_d
    if-nez v6, :cond_38

    move/from16 v24, v5

    goto :goto_e

    :cond_38
    move/from16 v24, v6

    :goto_e
    if-nez v8, :cond_39

    move/from16 v25, v5

    goto :goto_f

    :cond_39
    move/from16 v25, v8

    :goto_f
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object/from16 v17, v1

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v27}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/ArrayList;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;IIFZ)V

    goto/16 :goto_2a

    :pswitch_c
    sget-object v4, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3a

    move v3, v5

    goto :goto_10

    :cond_3a
    move v3, v12

    :goto_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v26, v3

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v17, v12

    move/from16 v25, v17

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto/16 :goto_13

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-ne v3, v4, :cond_3b

    move/from16 v26, v5

    goto :goto_11

    :cond_3b
    move/from16 v26, v12

    goto :goto_11

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v25

    goto :goto_13

    :pswitch_f
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_13

    :pswitch_10
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_13

    :pswitch_11
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_13

    :pswitch_12
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_13

    :pswitch_13
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_13

    :pswitch_14
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_13

    :pswitch_15
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_13

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    array-length v6, v4

    move v7, v12

    :goto_12
    if-ge v7, v6, :cond_3d

    aget v17, v4, v7

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->getValue(I)I

    move-result v8

    if-ne v8, v3, :cond_3c

    goto :goto_13

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_3d
    move/from16 v17, v12

    goto :goto_13

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_13
    const/4 v4, 0x3

    goto :goto_11

    :cond_3e
    new-instance v1, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object v15, v1

    invoke-direct/range {v15 .. v26}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    goto/16 :goto_2a

    :pswitch_18
    sget-object v3, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v12

    move v7, v6

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    sget-object v9, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v9

    if-eqz v9, :cond_42

    if-eq v9, v5, :cond_41

    if-eq v9, v2, :cond_40

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_14

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v7

    goto :goto_14

    :cond_40
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    sget-object v10, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    invoke-static {v0, v1, v9, v10, v12}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    goto :goto_14

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v6

    goto :goto_14

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_43
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    invoke-direct {v1, v4, v6, v3, v7}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_common/zzpx;Z)V

    goto/16 :goto_2a

    :pswitch_19
    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v12

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    if-eqz v3, :cond_48

    if-eq v3, v5, :cond_47

    if-eq v3, v2, :cond_46

    const/4 v4, 0x3

    if-eq v3, v4, :cond_45

    if-eq v3, v9, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_15

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v18

    goto :goto_15

    :cond_45
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v17

    goto :goto_15

    :cond_46
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v16

    goto :goto_15

    :cond_47
    invoke-static {v0, v1, v12}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    goto :goto_15

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_15

    :cond_49
    new-instance v1, Lcom/airbnb/lottie/model/content/Repeater;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    goto/16 :goto_2a

    :pswitch_1a
    sget-object v3, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    sget-object v6, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    if-eqz v6, :cond_4c

    if-eq v6, v5, :cond_4b

    if-eq v6, v2, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_16

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v12

    goto :goto_16

    :cond_4b
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_16

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_4d
    if-eqz v12, :cond_4e

    goto/16 :goto_29

    :cond_4e
    new-instance v1, Lcom/airbnb/lottie/model/content/RoundedCorners;

    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    goto/16 :goto_2a

    :pswitch_1b
    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v12

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    if-eqz v3, :cond_53

    if-eq v3, v5, :cond_52

    if-eq v3, v2, :cond_51

    const/4 v4, 0x3

    if-eq v3, v4, :cond_50

    if-eq v3, v9, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_17

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v18

    goto :goto_17

    :cond_50
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v17

    goto :goto_17

    :cond_51
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v16

    goto :goto_17

    :cond_52
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v15

    goto :goto_17

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_17

    :cond_54
    new-instance v1, Lcom/airbnb/lottie/model/content/Repeater;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    goto/16 :goto_2a

    :pswitch_1c
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    move v4, v12

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    sget-object v6, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    if-eqz v6, :cond_5c

    if-eq v6, v5, :cond_56

    if-eq v6, v2, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_18

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v4

    goto :goto_18

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v6

    if-eq v6, v5, :cond_5b

    if-eq v6, v2, :cond_5a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_59

    if-eq v6, v9, :cond_58

    if-eq v6, v10, :cond_57

    goto :goto_19

    :cond_57
    move v12, v10

    goto :goto_18

    :cond_58
    move v12, v9

    goto :goto_18

    :cond_59
    const/4 v12, 0x3

    goto :goto_18

    :cond_5a
    move v12, v2

    goto :goto_18

    :cond_5b
    :goto_19
    move v12, v5

    goto :goto_18

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_5d
    new-instance v2, Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-direct {v2, v3, v12, v4}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;IZ)V

    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_2a

    :pswitch_1d
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v29, v11

    move/from16 v19, v12

    move/from16 v25, v19

    move/from16 v26, v25

    move/from16 v30, v26

    move/from16 v27, v16

    :cond_5e
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    sget-object v6, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    packed-switch v6, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_1a

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_5f
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    sget-object v8, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v8

    if-eqz v8, :cond_61

    if-eq v8, v5, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_1c

    :cond_60
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    goto :goto_1c

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1c

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    move-object/from16 v29, v6

    goto :goto_1b

    :cond_63
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    :cond_64
    iput-boolean v5, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_5e

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v30

    goto :goto_1a

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move/from16 v27, v6

    goto/16 :goto_1a

    :pswitch_21
    const/4 v6, 0x3

    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v7

    sub-int/2addr v7, v5

    aget v26, v6, v7

    goto/16 :goto_1a

    :pswitch_22
    const/4 v6, 0x3

    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v7

    sub-int/2addr v7, v5

    aget v25, v6, v7

    goto/16 :goto_1a

    :pswitch_23
    invoke-static {v0, v1, v5}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v24

    goto/16 :goto_1a

    :pswitch_24
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v23

    goto/16 :goto_1a

    :pswitch_25
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v22

    goto/16 :goto_1a

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v6

    if-ne v6, v5, :cond_66

    move/from16 v19, v5

    goto/16 :goto_1a

    :cond_66
    move/from16 v19, v2

    goto/16 :goto_1a

    :pswitch_27
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v4

    goto/16 :goto_1a

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v6, -0x1

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    sget-object v7, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v7

    if-eqz v7, :cond_68

    if-eq v7, v5, :cond_67

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_1d

    :cond_67
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v8, Lcom/google/android/gms/dynamite/zzo;

    invoke-direct {v8, v6}, Lcom/google/android/gms/dynamite/zzo;-><init>(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v9, v8, v12}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v20, v7

    goto :goto_1d

    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v6

    goto :goto_1d

    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_1a

    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1a

    :cond_6a
    if-nez v4, :cond_6b

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    move-object/from16 v21, v1

    goto :goto_1e

    :cond_6b
    move-object/from16 v21, v4

    :goto_1e
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v17, v1

    move-object/from16 v28, v3

    invoke-direct/range {v17 .. v30}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;IIFLjava/util/ArrayList;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    goto/16 :goto_2a

    :pswitch_2a
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    sget-object v6, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    if-eqz v6, :cond_70

    if-eq v6, v5, :cond_6f

    if-eq v6, v2, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_1f

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_6d
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v6

    if-eqz v6, :cond_6d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_1f

    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v12

    goto :goto_1f

    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    :cond_71
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-direct {v1, v4, v3, v12}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_2a

    :pswitch_2b
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v3

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v15, v12

    move/from16 v21, v15

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    packed-switch v3, :pswitch_data_4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_21

    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v21

    goto :goto_21

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-ne v3, v5, :cond_72

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_22

    :cond_72
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_22
    move-object/from16 v16, v3

    goto :goto_21

    :pswitch_2e
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v20

    goto :goto_21

    :pswitch_2f
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v19

    goto :goto_21

    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-ne v3, v5, :cond_73

    move v15, v5

    goto :goto_21

    :cond_73
    move v15, v2

    goto :goto_21

    :pswitch_31
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v4

    goto :goto_21

    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v3, -0x1

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    sget-object v6, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    if-eqz v6, :cond_75

    if-eq v6, v5, :cond_74

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_23

    :cond_74
    new-instance v6, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v7, Lcom/google/android/gms/dynamite/zzo;

    invoke-direct {v7, v3}, Lcom/google/android/gms/dynamite/zzo;-><init>(I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v8, v7, v12}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v17, v6

    goto :goto_23

    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    goto :goto_23

    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto :goto_21

    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_21

    :cond_77
    if-nez v4, :cond_78

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    move-object/from16 v18, v1

    goto :goto_24

    :cond_78
    move-object/from16 v18, v4

    :goto_24
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientFill;

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V

    goto/16 :goto_2a

    :pswitch_34
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v15, v6

    move v13, v12

    move/from16 v17, v13

    move-object v12, v4

    move v4, v5

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    sget-object v6, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v6

    if-eqz v6, :cond_7e

    if-eq v6, v5, :cond_7d

    if-eq v6, v2, :cond_7c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7b

    if-eq v6, v9, :cond_7a

    if-eq v6, v10, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_25

    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v17

    goto :goto_25

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v4

    goto :goto_25

    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v13

    goto :goto_25

    :cond_7c
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v3

    goto :goto_25

    :cond_7d
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v15

    goto :goto_25

    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto :goto_25

    :cond_7f
    if-nez v3, :cond_80

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    :cond_80
    move-object/from16 v16, v3

    if-ne v4, v5, :cond_81

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_26

    :cond_81
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_26
    move-object v14, v1

    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeFill;

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V

    goto/16 :goto_2a

    :pswitch_35
    sget-object v4, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const/4 v4, 0x3

    if-ne v3, v4, :cond_82

    move v3, v5

    goto :goto_27

    :cond_82
    move v3, v12

    :goto_27
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v17, v3

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v18, v12

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    sget-object v3, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    if-eqz v3, :cond_88

    if-eq v3, v5, :cond_87

    if-eq v3, v2, :cond_86

    if-eq v3, v4, :cond_85

    if-eq v3, v9, :cond_83

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_28

    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-ne v3, v4, :cond_84

    move/from16 v17, v5

    goto :goto_28

    :cond_84
    move/from16 v17, v12

    goto :goto_28

    :cond_85
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v18

    goto :goto_28

    :cond_86
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v16

    goto :goto_28

    :cond_87
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v15

    goto :goto_28

    :cond_88
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_28

    :cond_89
    new-instance v1, Lcom/airbnb/lottie/model/content/CircleShape;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/google/android/gms/internal/mlkit_common/zzpx;ZZ)V

    goto :goto_2a

    :goto_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_2a

    :cond_8a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method
