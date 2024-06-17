.class public final synthetic Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    iget p0, p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    neg-int p0, p0

    return p0

    :pswitch_4
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    sub-int/2addr p2, p1

    return p2

    :pswitch_5
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v3, p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-long v5, p2

    mul-long/2addr p0, v5

    cmp-long p0, v3, p0

    if-gez p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :pswitch_6
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_1
    return p0

    :pswitch_8
    check-cast p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_2
    return p0

    :pswitch_9
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    iget-wide p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iget-wide v0, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    iget-object p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    iget-object p1, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget p0, p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    iget p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_e
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$PHcY5cRhUX-iKudpaWJEa198duE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$PHcY5cRhUX-iKudpaWJEa198duE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$PHcY5cRhUX-iKudpaWJEa198duE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$zYuHKkFu1szcwTLsD7W8Cd7A9OE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$zYuHKkFu1szcwTLsD7W8Cd7A9OE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_13
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$zYuHKkFu1szcwTLsD7W8Cd7A9OE(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_14
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return v2

    :pswitch_15
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_8

    move v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v0, p0, p1

    :cond_8
    :goto_3
    return v0

    :pswitch_16
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0

    :pswitch_17
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v1, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, p0, v0}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0

    :pswitch_18
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0

    :pswitch_19
    check-cast p1, Landroidx/media3/common/Format;

    check-cast p2, Landroidx/media3/common/Format;

    iget p0, p2, Landroidx/media3/common/Format;->bitrate:I

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_1a
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_9

    array-length p0, p1

    array-length p1, p2

    sub-int v2, p0, p1

    goto :goto_5

    :cond_9
    move p0, v2

    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_b

    aget-byte v0, p1, p0

    aget-byte v1, p2, p0

    if-eq v0, v1, :cond_a

    sub-int v2, v0, v1

    goto :goto_5

    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    return v2

    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    check-cast p2, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p1}, Lcom/motorola/camera/VideoFormat;->getArea()I

    move-result p0

    invoke-virtual {p2}, Lcom/motorola/camera/VideoFormat;->getArea()I

    move-result v2

    if-le p0, v2, :cond_c

    goto :goto_6

    :cond_c
    if-ge p0, v2, :cond_d

    goto :goto_7

    :cond_d
    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_e

    :goto_6
    move v0, v1

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    :goto_7
    return v0

    :goto_8
    check-cast p1, Landroid/hardware/camera2/params/Face;

    check-cast p2, Landroid/hardware/camera2/params/Face;

    if-nez p1, :cond_10

    move p1, v2

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p1, p0

    :goto_9
    if-nez p2, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int v2, p2, p0

    :goto_a
    invoke-static {v2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
