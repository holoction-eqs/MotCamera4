.class public final Landroidx/databinding/ViewDataBinding$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/work/Worker$1;

    invoke-virtual {v0}, Landroidx/work/Worker$1;->run()V

    return-void

    :goto_0
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v0, v0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar$1;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-wide v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_10

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v8, :cond_1

    :cond_0
    :goto_2
    move/from16 v16, v7

    goto/16 :goto_c

    :cond_1
    iget-object v9, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    const/4 v12, 0x1

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-gez v11, :cond_3

    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v9, v12

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_0

    check-cast v8, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-wide v13, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const-wide/16 v10, 0x0

    cmp-long v9, v13, v10

    if-nez v9, :cond_4

    iput-wide v2, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    goto :goto_2

    :cond_4
    sub-long v13, v2, v13

    iput-wide v2, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget-boolean v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v15, 0x0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v9, :cond_6

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v13, v9, v11

    if-eqz v13, :cond_5

    iget-object v13, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move/from16 v16, v7

    float-to-double v6, v9

    iput-wide v6, v13, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto :goto_5

    :cond_5
    move/from16 v16, v7

    :goto_5
    iget-object v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v6, v6

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v15, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v6, 0x0

    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    goto/16 :goto_8

    :cond_6
    move/from16 v16, v7

    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v6, v11

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v6, :cond_7

    iget-wide v10, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v10, v10

    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move-wide/from16 v18, v10

    float-to-double v9, v6

    const-wide/16 v20, 0x2

    div-long v13, v13, v20

    move-object/from16 v17, v7

    move-wide/from16 v20, v9

    move-wide/from16 v22, v13

    invoke-virtual/range {v17 .. v23}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v6

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    float-to-double v9, v9

    iput-wide v9, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget v10, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v10, v10

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    move-object/from16 v17, v7

    move-wide/from16 v18, v10

    goto :goto_6

    :cond_7
    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v10, v6

    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move-object/from16 v17, v7

    move-wide/from16 v18, v10

    move-wide/from16 v22, v13

    :goto_6
    float-to-double v6, v6

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v6

    iget v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v6, -0x800001

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v13, v10

    iget-wide v9, v11, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v9, v13, v9

    if-gez v9, :cond_8

    iget-wide v9, v11, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v9, v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v9, v7

    iget-wide v13, v11, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v7, v9, v13

    if-gez v7, :cond_8

    move v7, v12

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_9

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v9, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v7, v9

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v15, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_8
    move v7, v12

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v6, -0x800001

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    if-eqz v7, :cond_f

    const/4 v6, 0x0

    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    sget-object v6, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    new-instance v7, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v7, v6, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v12, v6, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_b
    const-wide/16 v6, 0x0

    iput-wide v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const/4 v6, 0x0

    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    const/4 v6, 0x0

    :goto_a
    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_d

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_e
    :goto_b
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_f

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    :goto_c
    add-int/lit8 v7, v16, 0x1

    goto/16 :goto_1

    :cond_10
    iget-boolean v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v2, :cond_13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_11
    :goto_d
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_12

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_13
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v1, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    if-nez v1, :cond_14

    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/appcompat/widget/Toolbar$1;)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    :cond_14
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->postFrameCallback()V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
