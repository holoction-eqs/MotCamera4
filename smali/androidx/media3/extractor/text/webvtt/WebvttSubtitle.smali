.class public final Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final cueInfos:Ljava/util/List;

.field public final cueTimesUs:[J

.field public final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->endTimeUs:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    mul-int/lit8 v6, v4, 0x2

    iget-object v7, v0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    aget-wide v8, v7, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v7, v6

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    iget-object v6, v5, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->cue:Landroidx/media3/common/text/Cue;

    iget v7, v6, Landroidx/media3/common/text/Cue;->line:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v4, 0x13

    invoke-direct {v0, v4}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    iget-object v0, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->cue:Landroidx/media3/common/text/Cue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v7, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget v11, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iget v12, v0, Landroidx/media3/common/text/Cue;->position:F

    iget v13, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iget v14, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v15, v0, Landroidx/media3/common/text/Cue;->textSize:F

    iget v10, v0, Landroidx/media3/common/text/Cue;->size:F

    iget v9, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget-boolean v4, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 v16, v10

    iget v10, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    move/from16 v17, v10

    iget v10, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    iget v0, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    move-object/from16 v22, v2

    rsub-int/lit8 v2, v3, -0x1

    int-to-float v2, v2

    const/16 v18, 0x1

    move/from16 v19, v10

    new-instance v10, Landroidx/media3/common/text/Cue;

    move/from16 v20, v4

    move-object v4, v10

    move/from16 v21, v9

    move v9, v2

    move-object v2, v10

    move/from16 v23, v19

    move/from16 v19, v17

    move/from16 v10, v18

    move/from16 v17, v21

    move/from16 v18, v20

    move/from16 v20, v23

    move/from16 v21, v0

    invoke-direct/range {v4 .. v21}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v22

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public final getEventTime(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v2, p0

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length p0, p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZ)I

    move-result p1

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
