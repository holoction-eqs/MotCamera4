.class public final Lcom/motorola/camera/slidedoc/SlidePointTuning;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public failCount:I

.field public lastUpdateTime:J

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mUpdateInterval:I

.field public final pointsFlow:Ljava/util/List;

.field public showingPoints:[Landroid/graphics/Point;

.field public smoothPoints:[Landroid/graphics/Point;

.field public successCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    aget v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    return-void
.end method

.method public static angleIntersection(FF)F
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x42b40000    # 90.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    rem-float/2addr p0, p1

    sub-float p0, p1, p0

    :cond_0
    return p0
.end method

.method public static parallelFourEdge([Landroid/graphics/Point;)Z
    .locals 31

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-object v5, p0, v5

    new-instance v6, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v6, v1, v5}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance v7, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v7, v3, v4}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance v8, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v8, v1, v3}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance v9, Lcom/motorola/camera/slidedoc/Edge;

    invoke-direct {v9, v5, v4}, Lcom/motorola/camera/slidedoc/Edge;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v6, v7}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v10

    invoke-virtual {v8, v9}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    cmpl-double v16, v10, v14

    if-gtz v16, :cond_0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_18

    :cond_0
    sub-double v14, v10, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpl-double v18, v16, v18

    if-gtz v18, :cond_19

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    cmpl-double v20, v16, v18

    if-lez v20, :cond_1

    cmpl-double v20, v14, v18

    if-lez v20, :cond_1

    goto/16 :goto_2

    :cond_1
    cmpg-double v0, v16, v18

    if-gez v0, :cond_18

    cmpl-double v0, v14, v18

    if-lez v0, :cond_18

    invoke-virtual {v8, v6}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v14

    invoke-virtual {v8, v7}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v16

    invoke-virtual {v9, v6}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v18

    invoke-virtual {v9, v7}, Lcom/motorola/camera/slidedoc/Edge;->intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D

    move-result-wide v20

    cmpg-double v0, v10, v12

    iget-wide v10, v6, Lcom/motorola/camera/slidedoc/Edge;->length:D

    iget-wide v12, v7, Lcom/motorola/camera/slidedoc/Edge;->length:D

    move-object/from16 v24, v3

    iget-wide v2, v8, Lcom/motorola/camera/slidedoc/Edge;->length:D

    move-wide/from16 v25, v10

    iget-wide v10, v9, Lcom/motorola/camera/slidedoc/Edge;->length:D

    if-gez v0, :cond_d

    iget v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v8, v24

    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-object/from16 v24, v1

    int-to-double v0, v0

    iget v9, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v27, v5

    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v28, v8

    int-to-double v8, v5

    sub-double v29, v0, v8

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    const-wide/high16 v22, 0x402e000000000000L    # 15.0

    cmpg-double v5, v29, v22

    if-ltz v5, :cond_c

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double v0, v0, v22

    if-gtz v0, :cond_c

    iget v0, v6, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    const/high16 v5, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_c

    iget v0, v7, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    invoke-static {v0, v1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    sub-double/2addr v2, v10

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v0, v8

    iget v1, v6, Lcom/motorola/camera/slidedoc/Edge;->height:I

    iget v5, v7, Lcom/motorola/camera/slidedoc/Edge;->height:I

    if-lez v0, :cond_7

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    cmpl-double v0, v25, v12

    if-lez v0, :cond_5

    iget v0, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    move-object/from16 v8, v28

    iput v0, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v9, v27

    iget v1, v9, Landroid/graphics/Point;->y:I

    iget v2, v4, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_4

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v8, Landroid/graphics/Point;->y:I

    :cond_4
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v7, Lcom/motorola/camera/slidedoc/Edge;->k:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v7, Lcom/motorola/camera/slidedoc/Edge;->n:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v8, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v9, v27

    iget v0, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v5

    move-object/from16 v10, v24

    iput v0, v10, Landroid/graphics/Point;->y:I

    iget v1, v4, Landroid/graphics/Point;->y:I

    iget v2, v9, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_6

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v10, Landroid/graphics/Point;->y:I

    :cond_6
    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v6, Lcom/motorola/camera/slidedoc/Edge;->k:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v6, Lcom/motorola/camera/slidedoc/Edge;->n:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v10, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, v24

    move-object/from16 v9, v27

    move-object/from16 v8, v28

    neg-double v2, v2

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    cmpg-double v0, v2, v14

    if-gez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    cmpl-double v0, v25, v12

    if-lez v0, :cond_a

    iget v0, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Point;->y:I

    iget v1, v8, Landroid/graphics/Point;->y:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_9

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Point;->y:I

    :cond_9
    iget v0, v4, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v7, Lcom/motorola/camera/slidedoc/Edge;->k:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v7, Lcom/motorola/camera/slidedoc/Edge;->n:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_a
    iget v0, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    iput v0, v9, Landroid/graphics/Point;->y:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_b

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Point;->y:I

    :cond_b
    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v6, Lcom/motorola/camera/slidedoc/Edge;->k:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v6, Lcom/motorola/camera/slidedoc/Edge;->n:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_c
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_d
    move-object v0, v1

    move-object/from16 v1, v24

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v24, v0

    iget v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v28, v1

    iget v1, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    sub-double v29, v6, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    const-wide/high16 v22, 0x402e000000000000L    # 15.0

    cmpg-double v27, v29, v22

    if-ltz v27, :cond_18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double v0, v0, v22

    if-gtz v0, :cond_18

    iget v0, v8, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_18

    iget v0, v9, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    invoke-static {v0, v1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->angleIntersection(FF)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    sub-double v0, v25, v12

    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double v16, v16, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v6, v6, v12

    iget v7, v8, Lcom/motorola/camera/slidedoc/Edge;->width:I

    iget v12, v9, Lcom/motorola/camera/slidedoc/Edge;->width:I

    if-lez v6, :cond_13

    const-wide/high16 v13, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v13

    if-gez v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    cmpl-double v0, v2, v10

    if-lez v0, :cond_11

    iget v0, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v7

    iput v0, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v6, v28

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v4, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_10

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v5, Landroid/graphics/Point;->x:I

    :cond_10
    iget v0, v5, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v9, Lcom/motorola/camera/slidedoc/Edge;->a:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v9, Lcom/motorola/camera/slidedoc/Edge;->c:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_11
    move-object/from16 v6, v28

    iget v0, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v12

    move-object/from16 v13, v24

    iput v0, v13, Landroid/graphics/Point;->x:I

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_12

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v13, Landroid/graphics/Point;->x:I

    :cond_12
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v8, Lcom/motorola/camera/slidedoc/Edge;->a:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v8, Lcom/motorola/camera/slidedoc/Edge;->c:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v13, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_13
    move-object/from16 v13, v24

    move-object/from16 v6, v28

    neg-double v0, v0

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v14

    if-gez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    cmpl-double v0, v2, v10

    if-lez v0, :cond_16

    iget v0, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v7

    iput v0, v4, Landroid/graphics/Point;->x:I

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v13, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Point;->x:I

    :cond_15
    iget v0, v4, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v9, Lcom/motorola/camera/slidedoc/Edge;->a:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v9, Lcom/motorola/camera/slidedoc/Edge;->c:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_16
    iget v0, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v12

    iput v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v13, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_17

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Point;->x:I

    :cond_17
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v8, Lcom/motorola/camera/slidedoc/Edge;->a:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v0, v8, Lcom/motorola/camera/slidedoc/Edge;->c:F

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v6, Landroid/graphics/Point;->y:I

    :cond_18
    :goto_1
    const/4 v0, 0x1

    :cond_19
    :goto_2
    return v0
.end method


# virtual methods
.method public final clearOverTimePoints(J)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/slidedoc/TimePoints;

    iget-wide v4, v4, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    const/16 v1, 0x32

    if-le p0, v1, :cond_2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x5

    if-le p0, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/slidedoc/TimePoints;

    iget-wide v1, p0, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    cmp-long p0, p1, v1

    if-lez p0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public final getShowingPoints()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-eqz v2, :cond_0

    array-length p0, v2

    const/4 v3, 0x4

    if-ne p0, v3, :cond_0

    array-length p0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    aget-object v4, v2, v3

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "SlidePointTuning"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final getSmoothPoints(J)[Landroid/graphics/Point;
    .locals 12

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->clearOverTimePoints(J)V

    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    const/16 v1, 0x32

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    if-ge p2, v3, :cond_1

    :cond_0
    if-lez v0, :cond_8

    const/4 v0, 0x5

    if-lt p2, v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    const/4 v5, 0x4

    if-nez v0, :cond_2

    new-array v0, v5, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_3

    iget-object v6, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    if-ge v0, v5, :cond_3

    iget-object v6, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v0

    iput v4, v6, Landroid/graphics/Point;->x:I

    iput v4, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/slidedoc/TimePoints;

    iget-object v6, v6, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_4

    iget-object v8, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v8, v8, v7

    iget v9, v8, Landroid/graphics/Point;->x:I

    aget-object v10, v6, v7

    iget v11, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v11

    iput v9, v8, Landroid/graphics/Point;->x:I

    iget v9, v8, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move p1, v4

    :goto_4
    if-ge p1, v5, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    iget v6, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v6, p2

    iput v6, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v6, p2

    iput v6, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    iget p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    iput v4, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    if-le p1, v2, :cond_7

    iput v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    return-object p0

    :cond_8
    iget p2, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    if-lez p2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_9
    iput v4, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->successCount:I

    iget p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    if-le p1, v2, :cond_a

    iput v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->failCount:I

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onZoomEnd()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "SlidePointTuning"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final smoothRectPoints(J[Landroid/graphics/Point;)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/slidedoc/TimePoints;

    iget-object v0, v0, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    aget-object v6, v0, v5

    aget-object v7, p3, v5

    if-eqz v6, :cond_1

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_1

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v9, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v4

    :goto_2
    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    rem-int/2addr v2, v6

    aget-object v3, p3, v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothPoints:[Landroid/graphics/Point;

    aget-object v2, v5, v2

    iget v6, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    int-to-double v6, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v2

    int-to-double v2, v3

    aget-object v4, p3, v0

    aget-object v0, v5, v0

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-double v8, v5

    add-double/2addr v8, v6

    double-to-int v5, v8

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    add-double/2addr v5, v2

    double-to-int v0, v5

    iput v0, v4, Landroid/graphics/Point;->y:I

    :cond_4
    new-instance v0, Lcom/motorola/camera/slidedoc/TimePoints;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/slidedoc/TimePoints;-><init>(J[Landroid/graphics/Point;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->clearOverTimePoints(J)V

    return-void
.end method
