.class public final Landroidx/media3/extractor/text/cea/CeaSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cues:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->$r8$classId:I

    const-wide/16 v1, 0x0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :pswitch_1
    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :goto_1
    cmp-long p1, p1, v1

    if-ltz p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventTime(I)J
    .locals 4

    iget p0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v2

    :pswitch_1
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    return-wide v2

    :goto_1
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventTimeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 4

    iget p0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->$r8$classId:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v3

    :pswitch_1
    cmp-long p0, p1, v1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :goto_1
    cmp-long p0, p1, v1

    if-gez p0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
