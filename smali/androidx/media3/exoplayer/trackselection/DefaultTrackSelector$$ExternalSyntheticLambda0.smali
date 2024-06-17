.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final create(ILandroidx/media3/common/TrackGroup;[I)Lcom/google/common/collect/RegularImmutableList;
    .locals 16

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v9, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v14, p2

    move-object v11, v0

    move v12, v1

    move v13, v12

    :goto_0
    iget v0, v14, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v0, :cond_1

    new-instance v15, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v5, p3, v12

    move-object v0, v15

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move-object v4, v8

    move v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;)V

    add-int/lit8 v1, v13, 0x1

    array-length v0, v11

    if-ge v0, v1, :cond_0

    array-length v0, v11

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    :cond_0
    aput-object v15, v11, v13

    add-int/lit8 v12, v12, 0x1

    move v13, v1

    goto :goto_0

    :cond_1
    invoke-static {v13, v11}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    return-object v0
.end method
