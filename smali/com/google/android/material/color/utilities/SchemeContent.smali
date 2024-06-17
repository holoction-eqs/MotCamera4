.class public final Lcom/google/android/material/color/utilities/SchemeContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final contrastLevel:D

.field public final errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final isDark:Z

.field public final neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

.field public final tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final variant:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v4, v1, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    new-instance v6, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    iget-wide v2, v1, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v4, v1, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    sub-double v7, v4, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v9

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    new-instance v7, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    new-instance v2, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v2, v1}, Landroidx/work/WorkQuery$Builder;-><init>(Lcom/google/android/material/color/utilities/Hct;)V

    iget-object v3, v2, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    iget-wide v3, v3, Lcom/google/android/material/color/utilities/Hct;->hue:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2}, Landroidx/work/WorkQuery$Builder;->getHctsByHue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v2, v4}, Landroidx/work/WorkQuery$Builder;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    const/16 v10, 0x168

    if-ge v13, v10, :cond_1

    add-int v11, v3, v13

    rem-int/2addr v11, v10

    if-gez v11, :cond_0

    add-int/lit16 v11, v11, 0x168

    :cond_0
    invoke-virtual {v2}, Landroidx/work/WorkQuery$Builder;->getHctsByHue()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v2, v10}, Landroidx/work/WorkQuery$Builder;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v10

    sub-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v14, v8

    add-int/lit8 v13, v13, 0x1

    move-wide v8, v10

    goto :goto_0

    :cond_1
    const/4 v8, 0x6

    int-to-double v12, v8

    div-double/2addr v14, v12

    invoke-virtual {v2, v4}, Landroidx/work/WorkQuery$Builder;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v11

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_7

    add-int v9, v3, v13

    rem-int/2addr v9, v10

    if-gez v9, :cond_2

    add-int/lit16 v9, v9, 0x168

    :cond_2
    invoke-virtual {v2}, Landroidx/work/WorkQuery$Builder;->getHctsByHue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v2, v4}, Landroidx/work/WorkQuery$Builder;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v18

    sub-double v11, v18, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double v16, v11, v16

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-double v11, v9

    mul-double/2addr v11, v14

    cmpl-double v9, v16, v11

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const/4 v11, 0x1

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v11

    int-to-double v8, v9

    mul-double/2addr v8, v14

    cmpl-double v8, v16, v8

    if-ltz v8, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x6

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v13, 0x1

    if-le v13, v10, :cond_6

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x6

    if-ge v3, v8, :cond_7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move-wide/from16 v11, v18

    const/4 v8, 0x6

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    const/4 v8, 0x1

    :goto_6
    add-int/lit8 v9, v4, 0x1

    if-ge v8, v9, :cond_a

    rsub-int/lit8 v9, v8, 0x0

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gez v9, :cond_8

    add-int/2addr v9, v10

    goto :goto_7

    :cond_8
    if-lt v9, v10, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/2addr v9, v10

    :cond_9
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/color/utilities/Hct;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    sub-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move v8, v4

    :goto_8
    add-int/lit8 v9, v2, 0x1

    if-ge v8, v9, :cond_d

    move v9, v8

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gez v9, :cond_b

    add-int/2addr v9, v10

    goto :goto_9

    :cond_b
    if-lt v9, v10, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/2addr v9, v10

    :cond_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    invoke-static {v2}, Lcom/google/android/material/color/utilities/Score;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v8, v2, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    new-instance v2, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    iget-wide v3, v1, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v8, v1, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    div-double/2addr v8, v10

    new-instance v5, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v5, v3, v4, v8, v9}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    iget-wide v3, v1, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v8, v1, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    add-double/2addr v8, v10

    new-instance v10, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v10, v3, v4, v8, v9}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    const/4 v1, 0x7

    iput v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->variant:I

    move/from16 v1, p2

    iput-boolean v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/material/color/utilities/SchemeContent;->contrastLevel:D

    iput-object v6, v0, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iput-object v7, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iput-object v2, v0, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iput-object v5, v0, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iput-object v10, v0, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    new-instance v1, Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    const-wide/high16 v4, 0x4055000000000000L    # 84.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    iput-object v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-void
.end method
