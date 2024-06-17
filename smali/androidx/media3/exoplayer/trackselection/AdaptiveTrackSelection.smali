.class public final Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[IIJJLcom/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    cmp-long p0, p6, p4

    if-gez p0, :cond_0

    const-string p0, "AdaptiveTrackSelection"

    const-string p1, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p8}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static access$000([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/RegularImmutableList;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    if-le v4, v5, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    new-instance v5, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v5, v6, v7, v6, v7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add$1(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v0

    new-array v4, v3, [[J

    move v8, v2

    :goto_2
    array-length v9, v0

    const-wide/16 v10, -0x1

    if-ge v8, v9, :cond_5

    aget-object v9, v0, v8

    if-nez v9, :cond_2

    new-array v9, v2, [J

    aput-object v9, v4, v8

    goto :goto_4

    :cond_2
    iget-object v12, v9, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v13, v12

    new-array v13, v13, [J

    aput-object v13, v4, v8

    move v13, v2

    :goto_3
    array-length v14, v12

    if-ge v13, v14, :cond_4

    aget v14, v12, v13

    iget-object v15, v9, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v15, v15, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v14, v15, v14

    iget v14, v14, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v14, v14

    aget-object v16, v4, v8

    cmp-long v17, v14, v10

    if-nez v17, :cond_3

    move-wide v14, v6

    :cond_3
    aput-wide v14, v16, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    aget-object v9, v4, v8

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-array v8, v3, [I

    new-array v9, v3, [J

    move v12, v2

    :goto_5
    if-ge v12, v3, :cond_7

    aget-object v13, v4, v12

    array-length v14, v13

    if-nez v14, :cond_6

    move-wide v13, v6

    goto :goto_6

    :cond_6
    aget-wide v13, v13, v2

    :goto_6
    aput-wide v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v1, v9}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    sget-object v6, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/common/collect/MultimapBuilder$3;

    invoke-direct {v7, v6}, Lcom/google/common/collect/MultimapBuilder$3;-><init>(Lcom/google/common/collect/NaturalOrdering;)V

    invoke-virtual {v7}, L_COROUTINE/_BOUNDARY;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->build()Lcom/google/common/collect/Multimaps$CustomListMultimap;

    move-result-object v6

    move v7, v2

    :goto_7
    if-ge v7, v3, :cond_d

    aget-object v12, v4, v7

    array-length v13, v12

    if-gt v13, v5, :cond_8

    move/from16 v19, v3

    goto :goto_c

    :cond_8
    array-length v12, v12

    new-array v13, v12, [D

    move v14, v2

    :goto_8
    aget-object v15, v4, v7

    array-length v5, v15

    const-wide/16 v17, 0x0

    move/from16 v19, v3

    if-ge v14, v5, :cond_a

    aget-wide v2, v15, v14

    cmp-long v15, v2, v10

    if-nez v15, :cond_9

    goto :goto_9

    :cond_9
    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    :goto_9
    aput-wide v17, v13, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v19

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v12, v12, -0x1

    aget-wide v2, v13, v12

    const/4 v5, 0x0

    aget-wide v14, v13, v5

    sub-double/2addr v2, v14

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v12, :cond_c

    aget-wide v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    aget-wide v22, v13, v14

    add-double v20, v20, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v22

    cmpl-double v15, v2, v17

    if-nez v15, :cond_b

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    :cond_b
    const/4 v5, 0x0

    aget-wide v22, v13, v5

    sub-double v20, v20, v22

    div-double v20, v20, v2

    :goto_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v15, v5}, Lcom/google/common/collect/AbstractListMultimap;->put(Ljava/lang/Double;Ljava/lang/Integer;)Z

    goto :goto_a

    :cond_c
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    iget-object v2, v6, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    if-nez v2, :cond_e

    new-instance v2, Lcom/google/common/collect/AbstractMultimap$Values;

    const/4 v5, 0x0

    invoke-direct {v2, v6, v5}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;I)V

    iput-object v2, v6, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    goto :goto_d

    :cond_e
    const/4 v5, 0x0

    :goto_d
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move v3, v5

    :goto_e
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v3, v6, :cond_f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, v8, v6

    const/4 v10, 0x1

    add-int/2addr v7, v10

    aput v7, v8, v6

    aget-object v11, v4, v6

    aget-wide v11, v11, v7

    aput-wide v11, v9, v6

    invoke-static {v1, v9}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    move v2, v5

    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    aget-wide v3, v9, v2

    const-wide/16 v6, 0x2

    mul-long/2addr v3, v6

    aput-wide v3, v9, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_11
    invoke-static {v1, v9}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    move v2, v5

    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    goto :goto_11

    :cond_12
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    :goto_11
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add$1(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_13
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static addCheckpoint(Ljava/util/ArrayList;[J)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    return-void
.end method

.method public final getSelectedIndex()V
    .locals 0

    return-void
.end method

.method public final onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method
