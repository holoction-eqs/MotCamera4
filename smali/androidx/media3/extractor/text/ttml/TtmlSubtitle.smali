.class public final Landroidx/media3/extractor/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final eventTimesUs:[J

.field public final globalStyles:Ljava/util/Map;

.field public final imageMap:Ljava/util/Map;

.field public final regionMap:Ljava/util/Map;

.field public final root:Landroidx/media3/extractor/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->root:Landroidx/media3/extractor/text/ttml/TtmlNode;

    iput-object p3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iput-object p4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    iget-object v8, v0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iget-object v1, v0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->root:Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v5, p1

    invoke-virtual {v1, v5, v6, v2, v15}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    const/4 v12, 0x0

    iget-object v13, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v9, v1

    move-wide/from16 v10, p1

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/TreeMap;)V

    iget-object v7, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v2, p1

    move-object v5, v8

    move-object v6, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v34, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v19

    move-object/from16 v20, v19

    const v28, -0x800001

    const/high16 v27, -0x80000000

    const/16 v31, 0x0

    const/high16 v32, -0x1000000

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->position:F

    move/from16 v25, v4

    const/16 v26, 0x0

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->line:F

    move/from16 v22, v4

    const/16 v23, 0x0

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    move/from16 v24, v4

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->width:F

    move/from16 v29, v4

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->height:F

    move/from16 v30, v4

    iget v3, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    move/from16 v33, v3

    new-instance v3, Landroidx/media3/common/text/Cue;

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v34}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/text/Cue$Builder;

    iget-object v5, v2, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    invoke-virtual {v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    array-length v7, v6

    move v9, v4

    :goto_2
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const-string v12, ""

    invoke-virtual {v5, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_3
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v9, 0x20

    if-ge v6, v7, :cond_5

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_4

    add-int/lit8 v7, v6, 0x1

    move v10, v7

    :goto_4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v10, v7

    if-lez v10, :cond_4

    add-int/2addr v10, v6

    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_6

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_6

    invoke-virtual {v5, v4, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v6, v4

    :goto_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    const/16 v11, 0xa

    if-ge v6, v10, :cond_8

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_7

    add-int/lit8 v11, v6, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v6, v4

    :goto_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ge v6, v10, :cond_b

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_a

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_a

    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_c

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->line:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->line:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineType:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->position:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->width:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSize:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSizeType:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v3, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    iput v3, v2, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method public final getEventTime(I)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p0, p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

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
