.class public final Landroidx/media3/extractor/text/ssa/SsaSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cueTimesUs:Ljava/lang/Object;

.field public final cues:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cues:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->$r8$classId:I

    iget-object v1, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cues:Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object p0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result p0

    if-ne p0, v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0

    :goto_1
    check-cast p0, [J

    invoke-static {p0, p1, p2, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result p0

    if-eq p0, v2, :cond_2

    check-cast v1, [Landroidx/media3/common/text/Cue;

    aget-object p0, v1, p0

    sget-object p1, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    if-ne p0, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventTime(I)J
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->$r8$classId:I

    iget-object p0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ltz p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :goto_1
    if-ltz p1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    check-cast p0, [J

    array-length v0, p0

    if-ge p1, v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    aget-wide p0, p0, p1

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventTimeCount()I
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->$r8$classId:I

    iget-object p0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :goto_0
    check-cast p0, [J

    array-length p0, p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->$r8$classId:I

    const/4 v1, -0x1

    iget-object p0, p0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    not-int p1, p2

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_2

    move v1, p1

    :cond_2
    return v1

    :goto_2
    check-cast p0, [J

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZ)I

    move-result p1

    array-length p0, p0

    if-ge p1, p0, :cond_3

    move v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
