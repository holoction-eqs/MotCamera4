.class public final Lcom/google/android/gms/internal/mlkit_common/zzpx;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpx;->$r8$classId:I

    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpx;->$r8$classId:I

    const/4 p1, 0x6

    invoke-direct {p0, p2, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpx;->$r8$classId:I

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    iget-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, v3, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    array-length v6, v5

    iget-object v7, v4, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    array-length v8, v7

    if-ne v6, v8, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    array-length v2, v5

    array-length v6, v7

    add-int/2addr v2, v6

    new-array v6, v2, [F

    array-length v8, v5

    invoke-static {v5, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    array-length v8, v7

    invoke-static {v7, v0, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Ljava/util/Arrays;->sort([F)V

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v7, v0

    move v8, v7

    :goto_1
    if-ge v7, v2, :cond_2

    aget v9, v6, v7

    cmpl-float v10, v9, v5

    if-eqz v10, :cond_1

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    aget v5, v6, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6, v0, v8}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v3

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v2

    .line 7
    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v4, v3, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;)V

    move-object v2, v4

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpx;->$r8$classId:I

    const-class v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;)V

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;->zza:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzpa;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, p1, Lcom/google/android/gms/internal/mlkit_common/zzpa;->zzb:Z

    if-eqz v4, :cond_0

    new-instance v4, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v4, v2, p1}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzpa;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/zzpa;->zza:Ljava/lang/String;

    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzpn;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Ljava/lang/String;)V

    return-object p0

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzma;)V

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;->zza:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpx;->$r8$classId:I

    iget-object p0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :goto_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
