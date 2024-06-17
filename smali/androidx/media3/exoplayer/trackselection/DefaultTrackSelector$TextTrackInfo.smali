.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final hasCaptionRoleFlags:Z

.field public final isDefault:Z

.field public final isForced:Z

.field public final isWithinRendererCapabilities:Z

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredRoleFlagsScore:I

.field public final selectedAudioLanguageScore:I

.field public final selectionEligibility:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(IILandroidx/media3/common/TrackGroup;)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->selectionFlags:I

    iget p3, p4, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, p2

    :goto_2
    move v1, p1

    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p4, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x7fffffff

    move v2, p1

    :goto_4
    iput v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    iput v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    iget v1, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    invoke-static {p3, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4000(II)I

    move-result p3

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, p1

    :goto_5
    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-static {p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, p1

    :goto_6
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-static {v3, p6, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p6

    iput p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    if-gtz v2, :cond_9

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    if-gtz p3, :cond_9

    :cond_7
    iget-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz p2, :cond_8

    if-lez p6, :cond_8

    goto :goto_7

    :cond_8
    move p2, p1

    goto :goto_8

    :cond_9
    :goto_7
    move p2, v0

    :goto_8
    iget-boolean p3, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p5, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    move p1, v0

    :cond_a
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I
    .locals 7

    sget-object v0, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ComparisonChain$1;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1
    sget-object v3, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v4, Lcom/google/common/collect/ReverseNaturalOrdering;->INSTANCE:Lcom/google/common/collect/ReverseNaturalOrdering;

    .line 4
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget v5, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    invoke-virtual {v0, v2, v5}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v5, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    iget-boolean v6, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v5, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v5, v6, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    if-nez v2, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0
.end method

.method public final getSelectionEligibility()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public final bridge synthetic isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    const/4 p0, 0x0

    return p0
.end method
