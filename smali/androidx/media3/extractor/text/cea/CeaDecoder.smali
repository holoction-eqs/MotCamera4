.class public abstract Landroidx/media3/extractor/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# instance fields
.field public final availableInputBuffers:Ljava/util/ArrayDeque;

.field public final availableOutputBuffers:Ljava/util/ArrayDeque;

.field public dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

.field public playbackPositionUs:J

.field public queuedInputBufferCount:J

.field public final queuedInputBuffers:Ljava/util/PriorityQueue;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {v3}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    new-instance v3, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v4}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public abstract createSubtitle()Landroidx/media3/extractor/text/cea/CeaSubtitle;
.end method

.method public abstract decode(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V
.end method

.method public final dequeueInputBuffer()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 12

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-wide v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v5, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    const/4 v3, 0x4

    .line 1
    invoke-virtual {v1, v3}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v4

    .line 2
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {p0, v3}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    .line 3
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->decode(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->createSubtitle()Landroidx/media3/extractor/text/cea/CeaSubtitle;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v7, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    const-wide v10, 0x7fffffffffffffffL

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    :cond_1
    return-void
.end method

.method public abstract isNewSubtitleDataAvailable()Z
.end method

.method public final queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    iput-wide v0, p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method
