.class public abstract Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field public final formats:[Landroidx/media3/common/Format;

.field public final group:Landroidx/media3/common/TrackGroup;

.field public hashCode:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    array-length v0, p2

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    move v0, v1

    :goto_1
    array-length v2, p2

    iget-object v3, p1, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget v4, p2, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    new-instance p2, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    move p1, v1

    :goto_2
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object v0, v0, p1

    move v2, v1

    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v4, v3, v2

    if-ne v0, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    :goto_4
    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    new-array p0, p2, [J

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

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

.method public final getFormat(I)Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSelectedFormat()Landroidx/media3/common/Format;
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()V

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    return p0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    array-length p0, p0

    return p0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method
