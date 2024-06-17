.class public final Landroidx/media3/exoplayer/metadata/MetadataRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field public decoder:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

.field public final decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

.field public inputStreamEnded:Z

.field public final output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final outputHandler:Landroid/os/Handler;

.field public outputStreamEnded:Z

.field public outputStreamOffsetUs:J

.field public pendingMetadata:Landroidx/media3/common/Metadata;

.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Lkotlin/UNINITIALIZED_VALUE;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method


# virtual methods
.method public final decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    check-cast v3, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v3, v2}, Lkotlin/UNINITIALIZED_VALUE;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lkotlin/UNINITIALIZED_VALUE;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    array-length v4, v1

    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v4, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MetadataRenderer"

    return-object p0
.end method

.method public final getPresentationTimeUs(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v5, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Metadata;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media3/common/Metadata;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final invokeRendererInternal(Landroidx/media3/common/Metadata;)V
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v2, v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v1, v2}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    new-instance v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/16 p0, 0xe

    invoke-virtual {v3, p0, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    new-instance p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1c

    invoke-virtual {v3, p1, p0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final isEnded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public final isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onDisabled()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    check-cast p2, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p2, p1}, Lkotlin/UNINITIALIZED_VALUE;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    iget-wide v0, p1, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    add-long/2addr p2, v0

    sub-long/2addr p2, p4

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/Metadata;

    iget-object p1, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v0, p2, p3, p1}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    :cond_1
    iput-wide p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public final render(JJ)V
    .locals 5

    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    iget-boolean p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-nez p4, :cond_3

    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/MutablePair;->clear()V

    invoke-virtual {p0, v1, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v1, p4, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v1, p4}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/media3/common/Metadata;

    iget-wide v3, p4, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v3

    new-array p4, v0, [Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v1, v3, v4, p4}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    goto :goto_1

    :cond_2
    const/4 p4, -0x5

    if-ne v2, p4, :cond_3

    iget-object p4, v1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p4, Landroidx/media3/common/Format;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p4, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    :cond_3
    :goto_1
    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-eqz p4, :cond_5

    iget-wide v1, p4, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v3

    cmp-long p4, v1, v3

    if-gtz p4, :cond_5

    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media3/common/Metadata;)V

    :goto_2
    const/4 p4, 0x0

    iput-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    move p4, p3

    goto :goto_3

    :cond_5
    move p4, v0

    :goto_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_0

    iput-boolean p3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    check-cast p0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, p1}, Lkotlin/UNINITIALIZED_VALUE;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0
.end method
