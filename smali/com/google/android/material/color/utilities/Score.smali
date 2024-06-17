.class public abstract Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x405bc00000000000L    # 111.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-wide v3, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 17

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-object v3, p1, v0

    aget-wide v4, v3, v0

    mul-double/2addr v4, v1

    const/4 v6, 0x1

    aget-wide v7, p0, v6

    aget-wide v9, v3, v6

    mul-double/2addr v9, v7

    add-double/2addr v9, v4

    const/4 v4, 0x2

    aget-wide v11, p0, v4

    aget-wide v13, v3, v4

    mul-double/2addr v13, v11

    add-double/2addr v13, v9

    aget-object v3, p1, v6

    aget-wide v9, v3, v0

    mul-double/2addr v9, v1

    aget-wide v15, v3, v6

    mul-double/2addr v15, v7

    add-double/2addr v15, v9

    aget-wide v9, v3, v4

    mul-double/2addr v9, v11

    add-double/2addr v9, v15

    aget-object v3, p1, v4

    aget-wide v15, v3, v0

    mul-double/2addr v1, v15

    aget-wide v15, v3, v6

    mul-double/2addr v7, v15

    add-double/2addr v7, v1

    aget-wide v1, v3, v4

    mul-double/2addr v11, v1

    add-double/2addr v11, v7

    const/4 v1, 0x3

    new-array v1, v1, [D

    aput-wide v13, v1, v0

    aput-wide v9, v1, v6

    aput-wide v11, v1, v4

    return-object v1
.end method

.method public static ratioOfTones(DD)D
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v2, v0, p2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide/high16 p2, 0x4014000000000000L    # 5.0

    add-double/2addr v0, p2

    add-double/2addr p0, p2

    div-double/2addr v0, p0

    return-wide v0
.end method
