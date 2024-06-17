.class public abstract Lcom/motorola/camera/ProfileSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QUALITIES_HIGH_SPEED:Landroid/util/Range;

.field public static final QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

.field public static final QUALITIES_NORMAL:Landroid/util/Range;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v2, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    new-instance v3, Landroid/util/Range;

    const/16 v5, 0x7d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v3, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/VideoFormat;->getArea()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    move v9, v7

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-gt v5, v10, :cond_5

    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    iget v13, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v14, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v13, v14

    int-to-float v13, v13

    int-to-float v14, v4

    if-ne v2, v12, :cond_1

    cmpg-float v15, v14, v13

    if-gtz v15, :cond_0

    sub-float/2addr v13, v14

    goto :goto_1

    :cond_0
    move v13, v7

    goto :goto_1

    :cond_1
    sub-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v13

    :goto_1
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-nez v14, :cond_3

    iget v6, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v3, v6, :cond_2

    move-object v6, v10

    goto :goto_3

    :cond_2
    move-object v6, v10

    move v8, v11

    goto :goto_2

    :cond_3
    cmpg-float v11, v13, v9

    if-gez v11, :cond_4

    if-nez v8, :cond_4

    move-object v6, v10

    move v9, v13

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-nez v6, :cond_6

    if-ne v2, v12, :cond_6

    const-string v2, "ProfileSelector"

    const-string v3, "valid media profile not found, trying closest"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v11}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v6

    :cond_6
    return-object v6
.end method

.method public static selectProfile(II)Landroid/media/CamcorderProfile;
    .locals 7

    mul-int/2addr p0, p1

    sget-object p1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v0, v4, :cond_3

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v4

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, p0

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    cmpl-float v6, v3, v2

    if-eqz v6, :cond_1

    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    :cond_1
    move-object v1, v4

    move v3, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method
