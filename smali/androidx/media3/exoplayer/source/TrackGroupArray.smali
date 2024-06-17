.class public final Landroidx/media3/exoplayer/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field public hashCode:I

.field public final length:I

.field public final trackGroups:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/TrackGroup;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v2, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    iget v3, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

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

.method public final get(I)Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    return p0
.end method
