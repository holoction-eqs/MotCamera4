.class public abstract Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECTS_NAMES:Lcom/motorola/camera/device/CameraService;

.field public static final NAMES:Lcom/motorola/camera/device/CameraService;

.field public static final TEXT_NAMES:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/motorola/camera/device/CameraService;

    const-string v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/motorola/camera/device/CameraService;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v2, 0x0

    const-string v4, "UNSET"

    const-wide/16 v5, 0x0

    const-wide/16 v13, -0x1

    move/from16 v26, v1

    move/from16 v18, v2

    move/from16 v23, v18

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v34, v25

    move-wide/from16 v16, v5

    move/from16 v27, v9

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v37, v29

    move-wide/from16 v19, v13

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v13, v4

    move/from16 v14, v37

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v1

    const/4 v9, 0x2

    const/4 v5, 0x3

    const/16 v39, -0x1

    packed-switch v1, :pswitch_data_0

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto/16 :goto_23

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v34

    goto/16 :goto_23

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_23

    :pswitch_2
    invoke-static {v0, v7, v2}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v33

    goto/16 :goto_23

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    move/from16 v37, v1

    goto/16 :goto_23

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    double-to-float v14, v4

    goto/16 :goto_23

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v4, v2

    double-to-float v1, v4

    move/from16 v29, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    move/from16 v28, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v27, v1

    goto :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v26, v1

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_23

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :cond_0
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto/16 :goto_f

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_b

    sget-object v2, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/motorola/camera/device/CameraService;

    const/16 v35, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v2, 0x0

    :cond_5
    const/4 v3, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_9

    sget-object v15, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v4, 0x1

    if-eq v15, v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    goto :goto_7

    :cond_6
    if-eqz v3, :cond_7

    new-instance v2, Lcom/google/common/base/Joiner;

    invoke-static {v0, v7, v4}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    const/16 v4, 0xc

    invoke-direct {v2, v15, v4}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    goto :goto_6

    :cond_7
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-eqz v2, :cond_4

    move-object/from16 v35, v2

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_4

    :cond_b
    const/16 v3, 0x19

    if-ne v2, v3, :cond_1d

    new-instance v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;-><init>()V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const-string v3, ""

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v4

    if-eqz v4, :cond_18

    const/4 v15, 0x1

    if-eq v4, v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    const/4 v15, 0x1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_b
    move/from16 v4, v39

    goto :goto_c

    :sswitch_0
    const-string v4, "Softness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_b

    :cond_e
    const/4 v4, 0x4

    goto :goto_c

    :sswitch_1
    const-string v4, "Shadow Color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_b

    :cond_f
    move v4, v5

    goto :goto_c

    :sswitch_2
    const-string v4, "Direction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_b

    :cond_10
    move v4, v9

    goto :goto_c

    :sswitch_3
    const-string v4, "Opacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_b

    :cond_11
    const/4 v4, 0x1

    goto :goto_c

    :sswitch_4
    const-string v4, "Distance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_17

    const/4 v15, 0x1

    if-eq v4, v15, :cond_16

    if-eq v4, v9, :cond_15

    if-eq v4, v5, :cond_14

    const/4 v5, 0x4

    if-eq v4, v5, :cond_13

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_e

    :cond_13
    invoke-static {v0, v7, v15}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    iput-object v4, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_e

    :cond_14
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v4

    iput-object v4, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    invoke-static {v0, v7, v4}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    iput-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    invoke-static {v0, v7, v4}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    iput-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_e

    :cond_17
    const/4 v4, 0x1

    invoke-static {v0, v7, v4}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    iput-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    :goto_e
    const/4 v5, 0x3

    goto/16 :goto_a

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    const/4 v5, 0x3

    goto/16 :goto_9

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    const/4 v5, 0x3

    goto/16 :goto_8

    :cond_1b
    iget-object v3, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-eqz v3, :cond_1c

    iget-object v4, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_1c

    iget-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v5, :cond_1c

    iget-object v15, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v15, :cond_1c

    iget-object v2, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v2, :cond_1c

    new-instance v36, Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-object/from16 v40, v36

    move-object/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v44, v15

    move-object/from16 v45, v2

    invoke-direct/range {v40 .. v45}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    goto :goto_f

    :cond_1c
    const/16 v36, 0x0

    :cond_1d
    :goto_f
    const/4 v5, 0x3

    goto/16 :goto_3

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    const/4 v5, 0x3

    goto/16 :goto_2

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_10

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v1, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_11

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/motorola/camera/device/CameraService;)I

    move-result v5

    if-eqz v5, :cond_25

    const/4 v15, 0x1

    if-eq v5, v15, :cond_24

    if-eq v5, v9, :cond_23

    const/4 v9, 0x3

    if-eq v5, v9, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_13

    :cond_22
    invoke-static {v0, v7, v15}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_13

    :cond_23
    invoke-static {v0, v7, v15}, Lkotlin/reflect/TypesJVMKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_13

    :cond_24
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v2

    goto :goto_13

    :cond_25
    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v1

    :goto_13
    const/4 v9, 0x2

    goto :goto_12

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v5, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v5, v1, v2, v3, v4}, Landroidx/work/WorkQuery$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v5

    const/4 v9, 0x2

    goto :goto_11

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-nez v1, :cond_28

    new-instance v1, Landroidx/work/WorkQuery$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroidx/work/WorkQuery$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_28
    const/4 v2, 0x0

    :goto_14
    move-object/from16 v31, v1

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_15

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_16

    :cond_2b
    const/4 v2, 0x0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    sget-object v4, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    const/4 v5, 0x0

    invoke-static {v0, v7, v3, v4, v5}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    move-object/from16 v30, v1

    :goto_16
    const/4 v9, 0x2

    goto/16 :goto_10

    :cond_2c
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_1

    :pswitch_b
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_2d
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    const/4 v2, 0x0

    goto/16 :goto_20

    :pswitch_c
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    move-object v1, v2

    move-object v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v2, 0x6f

    if-eq v15, v2, :cond_35

    const/16 v2, 0xe04

    if-eq v15, v2, :cond_33

    const v2, 0x197f1

    if-eq v15, v2, :cond_31

    const v2, 0x3339a3

    if-eq v15, v2, :cond_2f

    :goto_1a
    move/from16 v2, v39

    goto :goto_1b

    :cond_2f
    const-string v2, "mode"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v2, 0x3

    goto :goto_1b

    :cond_31
    const-string v2, "inv"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_1a

    :cond_32
    const/4 v2, 0x2

    goto :goto_1b

    :cond_33
    const-string v2, "pt"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v2, 0x1

    goto :goto_1b

    :cond_35
    const-string v2, "o"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_46

    const/4 v15, 0x1

    if-eq v2, v15, :cond_45

    const/4 v15, 0x2

    if-eq v2, v15, :cond_44

    const/4 v15, 0x3

    if-eq v2, v15, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto/16 :goto_1f

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v15, 0x61

    if-eq v3, v15, :cond_3e

    const/16 v15, 0x69

    if-eq v3, v15, :cond_3c

    const/16 v15, 0x6e

    if-eq v3, v15, :cond_3a

    const/16 v15, 0x73

    if-eq v3, v15, :cond_38

    goto :goto_1c

    :cond_38
    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v3, 0x3

    goto :goto_1d

    :cond_3a
    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_1c

    :cond_3b
    const/4 v3, 0x2

    goto :goto_1d

    :cond_3c
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_1c

    :cond_3d
    const/4 v3, 0x1

    goto :goto_1d

    :cond_3e
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    :goto_1c
    move/from16 v3, v39

    goto :goto_1d

    :cond_3f
    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_43

    const/4 v2, 0x1

    if-eq v3, v2, :cond_42

    const/4 v2, 0x2

    if-eq v3, v2, :cond_41

    const/4 v15, 0x3

    if-eq v3, v15, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "Unknown mask mode "

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Defaulting to Add."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1e

    :cond_40
    move v3, v2

    goto :goto_1f

    :cond_41
    const/4 v2, 0x0

    const/4 v3, 0x4

    goto/16 :goto_19

    :cond_42
    const/4 v2, 0x2

    const-string v3, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    goto/16 :goto_19

    :cond_43
    const/4 v2, 0x2

    :goto_1e
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_19

    :cond_44
    move v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v4

    goto :goto_1f

    :cond_45
    const/4 v2, 0x2

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v9

    sget-object v15, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    const/4 v2, 0x0

    invoke-static {v0, v7, v9, v15, v2}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v15, 0x6

    invoke-direct {v1, v15, v9}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    goto :goto_1f

    :cond_46
    const/4 v2, 0x0

    invoke-static/range {p0 .. p1}, Lkotlin/reflect/TypesJVMKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move-result-object v5

    :goto_1f
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_47
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v9, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {v9, v3, v1, v5, v4}, Lcom/airbnb/lottie/model/content/Mask;-><init>(ILcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_48
    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    add-int/2addr v3, v1

    iput v3, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_20

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    const/4 v3, 0x6

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    array-length v3, v4

    if-lt v1, v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported matte type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_23

    :cond_49
    const/4 v3, 0x6

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    aget v32, v3, v1

    invoke-static/range {v32 .. v32}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4a

    goto :goto_22

    :cond_4a
    const-string v1, "Unsupported matte type: Luma Inverted"

    goto :goto_21

    :cond_4b
    const-string v1, "Unsupported matte type: Luma"

    :goto_21
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_22
    iget v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    goto :goto_23

    :pswitch_e
    const/4 v3, 0x1

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v22

    goto :goto_23

    :pswitch_f
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    goto :goto_23

    :pswitch_10
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    move/from16 v24, v1

    goto :goto_23

    :pswitch_11
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    move/from16 v23, v1

    goto :goto_23

    :pswitch_12
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    int-to-long v4, v1

    move-wide/from16 v19, v4

    goto :goto_23

    :pswitch_13
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    const/16 v18, 0x7

    const/4 v4, 0x6

    if-ge v1, v4, :cond_4c

    invoke-static/range {v18 .. v18}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    aget v18, v4, v1

    goto :goto_23

    :pswitch_14
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v21

    goto :goto_23

    :pswitch_15
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v1

    int-to-long v4, v1

    move-wide/from16 v16, v4

    goto :goto_23

    :pswitch_16
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v13

    :cond_4c
    :goto_23
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v14, v0

    if-lez v1, :cond_4e

    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v11

    move-object/from16 v39, v10

    move-object v10, v6

    move-object/from16 v6, v38

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4e
    move-object/from16 v39, v10

    move-object v10, v6

    :goto_24
    const/4 v0, 0x0

    cmpl-float v0, v37, v0

    if-lez v0, :cond_4f

    goto :goto_25

    :cond_4f
    iget v0, v7, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move/from16 v37, v0

    :goto_25
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v11

    move-object v3, v11

    move/from16 v5, v37

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_50
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_51
    new-instance v37, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v37

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v39

    move-object/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v14, v25

    move-object/from16 v21, v15

    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v17, v28

    move/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move/from16 v22, v32

    move-object/from16 v23, v33

    move/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v26, v36

    invoke-direct/range {v0 .. v26}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/google/android/gms/internal/mlkit_common/zzpx;Landroidx/work/WorkQuery$Builder;Ljava/util/List;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/google/common/base/Joiner;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    return-object v37

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch
.end method
