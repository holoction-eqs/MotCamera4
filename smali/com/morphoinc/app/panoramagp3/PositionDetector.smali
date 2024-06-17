.class public final Lcom/morphoinc/app/panoramagp3/PositionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public count:J

.field public volatile cur_x:D

.field public volatile cur_y:D

.field public final direction:I

.field public idle_rect:Landroid/graphics/RectF;

.field public idle_start_time:J

.field public final idle_thres:D

.field public final mCameraOrientation:I

.field public final mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

.field public final mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public final output_height:I

.field public final output_width:I

.field public peak:D

.field public prev_x:D

.field public prev_y:D

.field public reset_idle_timer:Z

.field public final reverse_thres:D

.field public final reverse_thres2:D

.field public final too_fast_thres:D

.field public final too_slow_thres:D


# direct methods
.method public constructor <init>(IIIIILcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    new-instance v0, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;-><init>()V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    iput p1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    iput p2, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    iput p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    iput p4, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewWidth:I

    iput p5, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewHeight:I

    iput-object p6, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iput p7, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    const p5, 0x3ca3d70a    # 0.02f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3d8f5c29    # 0.07f

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz p1, :cond_5

    if-eq p1, p4, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_7

    :cond_0
    iget p1, p6, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr p1, p7

    rem-int/lit16 p1, p1, 0x168

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_1
    iget p1, p6, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr p1, p7

    rem-int/lit16 p1, p1, 0x168

    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_2

    :cond_3
    :goto_1
    int-to-double p1, p3

    iput-wide p1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_2
    int-to-float p1, p3

    mul-float/2addr v3, p1

    float-to-double p6, v3

    iput-wide p6, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p6, v2

    iput-wide p6, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p5

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double p1, p3

    goto :goto_6

    :cond_4
    iget p1, p6, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr p1, p7

    rem-int/lit16 p1, p1, 0x168

    if-eq p1, v5, :cond_6

    if-ne p1, v4, :cond_7

    goto :goto_3

    :cond_5
    iget p1, p6, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr p1, p7

    rem-int/lit16 p1, p1, 0x168

    if-eq p1, v5, :cond_7

    if-ne p1, v4, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    iput-wide v0, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_5

    :cond_7
    :goto_4
    int-to-double p3, p2

    iput-wide p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_5
    int-to-float p1, p2

    mul-float/2addr v3, p1

    float-to-double p3, v3

    iput-wide p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p3, v2

    iput-wide p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p5

    float-to-double p3, p1

    iput-wide p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double p1, p2

    :goto_6
    const-wide p3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double/2addr p3, p1

    iput-wide p3, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    const-wide p3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    :goto_7
    return-void
.end method


# virtual methods
.method public final detect(DD)I
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iput-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    :goto_0
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_1

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    goto :goto_1

    :cond_1
    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    :goto_1
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    goto :goto_2

    :cond_2
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    :goto_2
    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v12, :cond_3

    if-eq v6, v2, :cond_3

    iget-object v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v13, v13, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    if-eqz v13, :cond_5

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_3
    iget-object v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v13, v13, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_5

    const/16 v14, 0xb4

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_4
    move v13, v12

    goto :goto_4

    :cond_5
    :goto_3
    move v13, v11

    :goto_4
    if-eqz v13, :cond_9

    sub-double/2addr v9, v4

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    cmpl-double v9, v9, v13

    if-lez v9, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    cmpg-double v9, v4, v9

    if-gez v9, :cond_7

    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :cond_7
    int-to-double v9, v1

    cmpl-double v1, v4, v9

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    sub-double/2addr v4, v9

    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    cmpl-double v1, v4, v9

    if-lez v1, :cond_d

    goto :goto_5

    :cond_9
    sub-double v9, v4, v9

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    cmpl-double v1, v9, v13

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    cmpl-double v1, v4, v9

    if-lez v1, :cond_b

    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :cond_b
    cmpg-double v1, v4, v7

    if-gez v1, :cond_c

    goto :goto_5

    :cond_c
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    sub-double/2addr v9, v4

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    cmpl-double v1, v9, v4

    if-lez v1, :cond_d

    :goto_5
    move v1, v12

    goto :goto_6

    :cond_d
    move v1, v11

    :goto_6
    if-eqz v1, :cond_e

    const/4 v0, -0x2

    return v0

    :cond_e
    if-eq v6, v3, :cond_f

    if-eq v6, v2, :cond_f

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewWidth:I

    goto :goto_7

    :cond_f
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewHeight:I

    :goto_7
    div-int/2addr v6, v3

    iget v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    if-eq v9, v12, :cond_11

    if-eq v9, v2, :cond_11

    int-to-double v9, v6

    cmpg-double v1, v4, v9

    if-gez v1, :cond_10

    :goto_8
    move v1, v12

    goto :goto_9

    :cond_10
    move v1, v11

    goto :goto_9

    :cond_11
    sub-int/2addr v1, v6

    int-to-double v9, v1

    cmpl-double v1, v4, v9

    if-lez v1, :cond_10

    goto :goto_8

    :goto_9
    if-eqz v1, :cond_12

    return v12

    :cond_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-boolean v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    if-eqz v1, :cond_13

    iput-boolean v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_start_time:J

    :cond_13
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    if-nez v1, :cond_14

    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    new-instance v1, Landroid/graphics/RectF;

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    sub-double/2addr v13, v9

    double-to-float v6, v13

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    sub-double/2addr v13, v9

    double-to-float v13, v13

    iget-wide v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    add-double/2addr v14, v9

    double-to-float v14, v14

    iget-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    add-double/2addr v7, v9

    double-to-float v7, v7

    invoke-direct {v1, v6, v13, v14, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_14
    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_start_time:J

    sub-long/2addr v4, v6

    const-wide v6, 0x12a05f200L

    cmp-long v1, v6, v4

    if-gez v1, :cond_15

    move v1, v12

    goto :goto_a

    :cond_15
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    double-to-float v4, v4

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    double-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_16

    iput-boolean v12, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_16
    move v1, v11

    :goto_a
    if-eqz v1, :cond_17

    const/4 v0, -0x1

    return v0

    :cond_17
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    if-eq v1, v3, :cond_18

    if-eq v1, v2, :cond_18

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    goto :goto_b

    :cond_18
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    :goto_b
    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    iget v6, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    iget-object v7, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->pos:[D

    aput-wide v4, v7, v6

    add-int/2addr v6, v12

    iput v6, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    const/4 v4, 0x5

    if-lt v6, v4, :cond_19

    iput v11, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    :cond_19
    iget v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    if-ge v5, v4, :cond_1a

    add-int/2addr v5, v12

    iput v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    :cond_1a
    move v4, v11

    const-wide/16 v15, 0x0

    :goto_c
    iget v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    if-ge v4, v5, :cond_1b

    aget-wide v5, v7, v4

    add-double/2addr v15, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    int-to-double v4, v5

    div-double v4, v15, v4

    iput-wide v4, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->ave:D

    const-wide/16 v4, 0xf

    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1d

    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    iget-wide v4, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->ave:D

    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1c

    goto :goto_d

    :cond_1c
    iget-wide v0, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_1d

    move v2, v3

    goto :goto_d

    :cond_1d
    move v2, v11

    :goto_d
    return v2
.end method
