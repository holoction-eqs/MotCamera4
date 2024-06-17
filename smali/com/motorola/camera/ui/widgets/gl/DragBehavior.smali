.class public abstract Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDragEnable:Z

.field public mLastSampleTime:J

.field public final mVelocityTracker:Lcom/adobe/xmp/impl/ParseState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/adobe/xmp/impl/ParseState;

    return-void
.end method


# virtual methods
.method public final drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/adobe/xmp/impl/ParseState;

    const/4 v7, 0x1

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragStart()V

    goto/16 :goto_4

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v2, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne v2, v7, :cond_3

    iget-object v2, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    goto/16 :goto_3

    :cond_3
    iget-object v4, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    iget-object v5, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    new-array v8, v2, [F

    new-array v9, v2, [F

    move v10, v1

    :goto_0
    if-ge v10, v2, :cond_4

    iget-object v11, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v11, Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    sub-float/2addr v11, v4

    aput v11, v8, v10

    iget-object v11, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v11, Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    move v10, v1

    move v11, v3

    :goto_1
    if-ge v10, v2, :cond_5

    aget v12, v9, v10

    add-float/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    int-to-float v10, v2

    div-float/2addr v11, v10

    sub-float/2addr v5, v4

    move v4, v1

    move v12, v3

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_2
    if-ge v4, v2, :cond_6

    aget v16, v8, v4

    add-float v13, v13, v16

    aget v17, v9, v4

    add-float v15, v15, v17

    mul-float v18, v16, v16

    add-float v12, v18, v12

    mul-float v16, v16, v17

    add-float v14, v16, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    mul-float v2, v10, v12

    mul-float v4, v13, v13

    sub-float/2addr v2, v4

    mul-float/2addr v10, v14

    mul-float v4, v13, v15

    sub-float/2addr v10, v4

    div-float/2addr v10, v2

    mul-float/2addr v12, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float/2addr v12, v2

    mul-float/2addr v10, v5

    add-float/2addr v10, v12

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    mul-float v2, v10, v11

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    cmpl-float v2, v11, v3

    if-lez v2, :cond_8

    const/4 v7, -0x1

    :cond_8
    iput v7, v6, Lcom/adobe/xmp/impl/ParseState;->pos:I

    :cond_9
    iget v2, v6, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-nez v2, :cond_a

    move v3, v10

    :cond_a
    :goto_3
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragEnd(F)V

    iget-object v0, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput v1, v6, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return-void

    :cond_b
    :goto_4
    iget-wide v7, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_e

    sub-long v7, v3, v7

    long-to-float v2, v7

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    invoke-direct {v5}, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;-><init>()V

    iget-object v7, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_c

    move v7, v2

    goto :goto_5

    :cond_c
    iget-object v7, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    add-float/2addr v7, v2

    :goto_5
    iput v7, v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    div-float v2, v1, v2

    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    iget-object v2, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v5, 0xa

    if-le v2, v5, :cond_d

    iget-object v2, v6, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_d
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    :cond_e
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragApplyValue(F)V

    return-void
.end method

.method public abstract onDragApplyValue(F)V
.end method

.method public abstract onDragEnd(F)V
.end method

.method public abstract onDragStart()V
.end method
