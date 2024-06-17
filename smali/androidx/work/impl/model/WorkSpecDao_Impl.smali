.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final __db:Ljava/lang/Object;

.field public final __insertionAdapterOfWorkSpec:Ljava/lang/Object;

.field public final __preparedStmtOfDelete:Ljava/lang/Object;

.field public __preparedStmtOfIncrementGeneration:Ljava/lang/Object;

.field public __preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

.field public __preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

.field public __preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

.field public __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

.field public __preparedStmtOfResetScheduledState:Ljava/lang/Object;

.field public __preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

.field public __preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

.field public __preparedStmtOfSetOutput:Ljava/lang/Object;

.field public final __preparedStmtOfSetState:Ljava/lang/Object;

.field public final __updateAdapterOfWorkSpec:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v2, 0x5

    invoke-direct {v0, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    :goto_4
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Ljava/lang/Object;

    :goto_5
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    :goto_6
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    :goto_7
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    :goto_8
    return-void
.end method


# virtual methods
.method public final addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method public final addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_4
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_5
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_7
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_8
    return-void
.end method

.method public final applyValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Landroidx/core/view/MenuHostHelper;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION_X:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    instance-of v2, v2, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object p0, v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz p0, :cond_3

    iput-object v1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_3
    iput-object p1, v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz p1, :cond_f

    iput-object v0, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_POSITION_Y:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    instance-of v2, v2, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object p0, v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz p0, :cond_5

    iput-object v1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_5
    iput-object p1, v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz p1, :cond_f

    iput-object v0, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SCALE:Lcom/airbnb/lottie/value/ScaleXY;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Lcom/airbnb/lottie/value/ScaleXY;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    const/high16 v2, 0x42c80000    # 100.0f

    if-ne p2, v0, :cond_a

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_0

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    goto :goto_1

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    if-ne p2, v0, :cond_d

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez p2, :cond_c

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    :cond_c
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Landroidx/core/view/MenuHostHelper;)V

    goto :goto_1

    :cond_d
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    if-ne p2, v0, :cond_10

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez p2, :cond_e

    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    :cond_e
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    goto :goto_0

    :cond_f
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final getAllEligibleWorkSpecsForScheduling()Ljava/util/ArrayList;
    .locals 71

    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/16 v0, 0xc8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "run_in_foreground"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v30, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v31, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v33, v31

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v34

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v35, v31

    goto :goto_2

    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v36, v31

    goto :goto_3

    :cond_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v31

    goto :goto_4

    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_4
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v31

    goto :goto_5

    :cond_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_5
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v47

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move/from16 v3, v30

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v30, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_5

    move/from16 v18, v0

    move/from16 v0, v19

    const/16 v56, 0x1

    goto :goto_6

    :cond_5
    move/from16 v18, v0

    move/from16 v0, v19

    const/16 v56, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v61

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_6

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x1

    goto :goto_7

    :cond_6
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_7

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x1

    goto :goto_8

    :cond_7
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_8

    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x1

    goto :goto_9

    :cond_8
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_9

    move/from16 v26, v0

    move/from16 v0, v27

    const/16 v65, 0x1

    goto :goto_a

    :cond_9
    move/from16 v26, v0

    move/from16 v0, v27

    const/16 v65, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    move/from16 v28, v0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    :goto_b
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v70

    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v60, v45

    invoke-direct/range {v60 .. v70}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v29, v0

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v59}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v30

    move/from16 v30, v3

    goto/16 :goto_0

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public final getAllUnfinishedWork()Ljava/util/ArrayList;
    .locals 4

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public final getEligibleWorkForScheduling(I)Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "run_in_foreground"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/16 v30, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v33

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v30

    goto :goto_4

    :cond_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_4
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v36

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v30

    goto :goto_5

    :cond_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_5
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v46

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v3, v29

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p1, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x1

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x1

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x1

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x1

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x1

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Landroidx/work/Constraints;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v3

    goto/16 :goto_0

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v4, v3

    if-nez v5, :cond_0

    iget v5, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_1

    :cond_0
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    instance-of v4, v2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    :goto_0
    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_9

    iget-object v5, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v6, 0x42b40000    # 90.0f

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v5, v7

    :goto_1
    iget-object v7, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast v7, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-nez v7, :cond_5

    move v6, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v7

    neg-float v7, v7

    add-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    :goto_2
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v2, v7

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/16 v9, 0x9

    iget-object v10, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Ljava/lang/Object;

    if-ge v8, v9, :cond_6

    check-cast v10, [F

    aput v3, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move-object v8, v10

    check-cast v8, [F

    aput v5, v8, v7

    const/4 v11, 0x1

    aput v6, v8, v11

    neg-float v12, v6

    const/4 v13, 0x3

    aput v12, v8, v13

    const/4 v14, 0x4

    aput v5, v8, v14

    const/16 v15, 0x8

    aput v4, v8, v15

    iget-object v11, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Matrix;

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->setValues([F)V

    move v15, v7

    :goto_4
    if-ge v15, v9, :cond_7

    move-object/from16 v16, v10

    check-cast v16, [F

    aput v3, v16, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    aput v4, v8, v7

    aput v2, v8, v13

    aput v4, v8, v14

    const/16 v2, 0x8

    aput v4, v8, v2

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Matrix;

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->setValues([F)V

    move v15, v7

    :goto_5
    if-ge v15, v9, :cond_8

    move-object/from16 v16, v10

    check-cast v16, [F

    aput v3, v16, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    aput v5, v8, v7

    const/4 v7, 0x1

    aput v12, v8, v7

    aput v6, v8, v13

    aput v5, v8, v14

    const/16 v5, 0x8

    aput v4, v8, v5

    iget-object v5, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_9
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/ScaleXY;

    iget v5, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_a

    iget v6, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_b

    :cond_a
    iget v2, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_c

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    :cond_c
    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    :cond_d
    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_e
    return-object v1
.end method

.method public final getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 10

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    :goto_1
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Matrix;

    iget v4, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    float-to-double v8, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    check-cast p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/graphics/PointF;

    :goto_2
    move-object p0, v3

    check-cast p0, Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v2, :cond_5

    move v1, p1

    goto :goto_3

    :cond_5
    iget v1, v2, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v2, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    check-cast v3, Landroid/graphics/Matrix;

    return-object v3
.end method

.method public final getRunningWork()Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "state"

    invoke-static {v3, v4}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v3, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v3, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v3, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v3, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v3, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v3, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v3, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v3, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v3, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v3, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v3, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "run_in_foreground"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v30, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v33

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v30

    goto :goto_4

    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v36

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v30

    goto :goto_5

    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v46

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v1, v29

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v31, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v55, v31

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v61, v31

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v62, v31

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v63, v31

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v64, v31

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Landroidx/work/Constraints;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v1

    goto/16 :goto_0

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public final getScheduledWork()Ljava/util/ArrayList;
    .locals 70

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "state"

    invoke-static {v3, v4}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v3, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v3, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v3, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v3, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v3, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v3, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v3, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v3, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v3, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v3, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v3, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "minimum_retention_duration"

    invoke-static {v3, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "run_in_foreground"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "required_network_type"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "requires_charging"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "requires_device_idle"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "trigger_content_update_delay"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "trigger_max_content_delay"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v3, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v29, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v30, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v32, v30

    goto :goto_1

    :cond_0
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v33

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v34, v30

    goto :goto_2

    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    :goto_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v35, v30

    goto :goto_3

    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v30

    goto :goto_4

    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v36

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v30

    goto :goto_5

    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v46

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    move/from16 v1, v29

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move/from16 v29, v0

    move/from16 v0, p0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v31, 0x1

    if-eqz v17, :cond_5

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v55, v31

    goto :goto_6

    :cond_5
    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v55, 0x0

    :goto_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v56

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v60

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v61, v31

    goto :goto_7

    :cond_6
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v61, 0x0

    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v62, v31

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v62, 0x0

    :goto_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v63, v31

    goto :goto_9

    :cond_8
    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v63, 0x0

    :goto_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v64, v31

    goto :goto_a

    :cond_9
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v64, 0x0

    :goto_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    :goto_b
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v69

    new-instance v44, Landroidx/work/Constraints;

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v28, v0

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v29

    move/from16 v29, v1

    goto/16 :goto_0

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public final getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 3

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 58

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "last_enqueue_time"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "run_in_foreground"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "required_network_type"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "requires_charging"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "requires_device_idle"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    const/16 v29, 0x0

    if-eqz v28, :cond_c

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v31, v29

    goto :goto_1

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v32

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v33, v29

    goto :goto_2

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v34, v29

    goto :goto_3

    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, v29

    goto :goto_4

    :cond_4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v35

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v29

    goto :goto_5

    :cond_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v36

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v45

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move/from16 v0, v18

    const/16 v54, 0x1

    goto :goto_6

    :cond_6
    move/from16 v0, v18

    const/16 v54, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v55

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v6

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, v23

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    move/from16 v0, v23

    const/4 v7, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v0, v24

    const/4 v8, 0x1

    goto :goto_8

    :cond_8
    move/from16 v0, v24

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v0, v25

    const/4 v9, 0x1

    goto :goto_9

    :cond_9
    move/from16 v0, v25

    const/4 v9, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v0, v26

    const/4 v10, 0x1

    goto :goto_a

    :cond_a
    move/from16 v0, v26

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v15

    new-instance v43, Landroidx/work/Constraints;

    move-object/from16 v5, v43

    invoke-direct/range {v5 .. v15}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    new-instance v29, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v30, v29

    invoke-direct/range {v30 .. v57}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v29

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public final getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v4

    new-instance v5, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v5, v4, v3}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final hasUnfinishedWork()Z
    .locals 3

    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public final incrementPeriodCount(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final incrementWorkSpecRunAttemptCount(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v3, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final markWorkSpecScheduled(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    invoke-interface {v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final resetWorkSpecRunAttemptCount(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MapCollections;

    invoke-virtual {v2}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v3, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final setLastEnqueuedTime(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p3, :cond_0

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-interface {v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v2

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result p1

    int-to-long v3, p1

    const/4 p1, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    invoke-interface {v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v2}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
