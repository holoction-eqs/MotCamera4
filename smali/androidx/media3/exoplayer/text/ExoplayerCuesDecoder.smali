.class public final Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# instance fields
.field public final availableOutputBuffers:Ljava/util/ArrayDeque;

.field public final cueDecoder:Lcom/adobe/xmp/XMPMetaFactory$1;

.field public final inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field public inputBufferState:I

.field public released:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/xmp/XMPMetaFactory$1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->cueDecoder:Lcom/adobe/xmp/XMPMetaFactory$1;

    new-instance v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {v0}, Landroidx/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;

    invoke-direct {v3, p0, v0}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;-><init>(Landroidx/media3/extractor/text/SubtitleDecoder;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method


# virtual methods
.method public final dequeueInputBuffer()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    iget-object p0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    :goto_0
    return-object p0
.end method

.method public final dequeueOutputBuffer()Ljava/lang/Object;
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-object v7, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;

    iget-wide v1, v7, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v3, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->cueDecoder:Lcom/adobe/xmp/XMPMetaFactory$1;

    iget-object v5, v7, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v6, v5

    invoke-virtual {v3, v5, v8, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    const-string v3, "c"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-static {v5, v3}, Landroidx/media3/common/Format$1;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/ArrayList;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;-><init>(JLcom/google/common/collect/RegularImmutableList;)V

    iget-wide v2, v7, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    :goto_0
    invoke-virtual {v7}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v8, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public final queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    return-void
.end method

.method public final setPositionUs(J)V
    .locals 0

    return-void
.end method
