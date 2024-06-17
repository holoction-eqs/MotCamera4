.class public abstract Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static getDirectPlaybackSupportedEncodings()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-object v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/RegularImmutableMap;

    iget-object v2, v1, Lcom/google/common/collect/ImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    const/4 v3, 0x0

    iget v4, v1, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v5, v1, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>(II[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;)V

    iput-object v3, v1, Lcom/google/common/collect/ImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    const v4, 0xbb80

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    sget-object v4, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-static {v3, v4}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSupportedChannelCountForPassthrough(II)I
    .locals 3

    const/16 v0, 0xa

    :goto_0
    if-lez v0, :cond_1

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v1, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-static {v1, v2}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
