.class public final Landroidx/media3/common/Player$PositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iput-object p3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p4, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iput p5, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iput-wide p6, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iput-wide p8, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iput p10, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iput p11, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Player$PositionInfo;

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v4, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-wide v4, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget v3, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {p0, p1}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
