.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

.field public final decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field public decoderReplacementState:I

.field public finalStreamEndPositionUs:J

.field public final formatHolder:Lcom/airbnb/lottie/model/MutablePair;

.field public inputStreamEnded:Z

.field public lastRendererPositionUs:J

.field public nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field public nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public nextSubtitleEventIndex:I

.field public final output:Landroidx/media3/exoplayer/text/TextOutput;

.field public final outputHandler:Landroid/os/Handler;

.field public outputStreamEnded:Z

.field public outputStreamOffsetUs:J

.field public streamFormat:Landroidx/media3/common/Format;

.field public subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Lkotlin/UByte$Companion;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    new-instance p1, Lcom/airbnb/lottie/model/MutablePair;

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    return-void
.end method


# virtual methods
.method public final clearOutput()V
    .locals 4

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/common/text/CueGroup;-><init>(JLjava/util/List;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :goto_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final getNextEventTime()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
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

    iget-wide v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/text/CueGroup;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    move-object v1, p0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/16 v0, 0x1b

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    new-instance v1, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final isEnded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public final isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onDisabled()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    iget p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/media3/decoder/Decoder;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    check-cast p2, Lkotlin/UByte$Companion;

    invoke-virtual {p2, p1}, Lkotlin/UByte$Companion;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/decoder/Decoder;->flush()V

    :goto_0
    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 0

    iput-wide p4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iput p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    goto :goto_0

    :cond_0
    iput-boolean p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    check-cast p2, Lkotlin/UByte$Companion;

    invoke-virtual {p2, p1}, Lkotlin/UByte$Companion;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    :goto_0
    return-void
.end method

.method public final releaseBuffers()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method public final render(JJ)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    iget-boolean v4, v1, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-wide v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    :cond_0
    iget-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const-string v6, "TextRenderer"

    const-string v7, "Subtitle decoding failed. streamFormat="

    iget-object v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v4, :cond_2

    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v2, v3}, Landroidx/media3/extractor/text/SubtitleDecoder;->setPositionUs(J)V

    :try_start_0
    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lkotlin/UByte$Companion;

    invoke-virtual {v8, v0}, Lkotlin/UByte$Companion;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    return-void

    :cond_2
    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v11, 0x2

    if-eq v4, v11, :cond_3

    return-void

    :cond_3
    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v12

    move v4, v10

    :goto_1
    cmp-long v12, v12, v2

    if-gtz v12, :cond_5

    iget v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v4, v5

    iput v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v12

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v10

    :cond_5
    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v13, 0x4

    if-eqz v12, :cond_9

    invoke-virtual {v12, v13}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v14

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v12, v14, v16

    if-nez v12, :cond_9

    iget v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v12, v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v8

    check-cast v14, Lkotlin/UByte$Companion;

    invoke-virtual {v14, v12}, Lkotlin/UByte$Companion;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v12

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    :cond_7
    iget-wide v14, v12, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    cmp-long v14, v14, v2

    if-gtz v14, :cond_9

    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    :cond_8
    invoke-virtual {v12, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v4

    iput v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iput-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move v4, v5

    :cond_9
    :goto_2
    if-eqz v4, :cond_e

    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v4, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v4

    if-eqz v4, :cond_c

    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v12}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v12

    if-nez v12, :cond_a

    goto :goto_3

    :cond_a
    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v14, -0x1

    if-ne v4, v14, :cond_b

    invoke-virtual {v12}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v4

    :cond_b
    add-int/2addr v4, v14

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v14

    goto :goto_4

    :cond_c
    :goto_3
    iget-object v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v14, v4, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    :goto_4
    invoke-virtual {v1, v14, v15}, Landroidx/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v14

    new-instance v4, Landroidx/media3/common/text/CueGroup;

    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v12, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v14, v15, v2}, Landroidx/media3/common/text/CueGroup;-><init>(JLjava/util/List;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v10, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Landroidx/media3/common/text/CueGroup;)V

    :cond_e
    :goto_5
    iget v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v11, :cond_f

    return-void

    :cond_f
    :goto_6
    :try_start_1
    iget-boolean v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_17

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v2, :cond_11

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v2, :cond_10

    return-void

    :cond_10
    iput-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    :cond_11
    iget v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v3, v5, :cond_12

    iput v13, v2, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    iput v11, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_12
    invoke-virtual {v1, v0, v2, v10}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_16

    invoke-virtual {v2, v13}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_13

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_8

    :cond_13
    iget-object v3, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/Format;

    if-nez v3, :cond_14

    return-void

    :cond_14
    iget-wide v3, v3, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v3, v2, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {v2, v5}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v5

    goto :goto_7

    :cond_15
    move v4, v10

    :goto_7
    and-int/2addr v3, v4

    iput-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    :goto_8
    iget-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez v3, :cond_f

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_16
    const/4 v2, -0x3

    if-ne v3, v2, :cond_f

    return-void

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->clearOutput()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/text/TextRenderer;->releaseBuffers()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    iput-boolean v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lkotlin/UByte$Companion;

    invoke-virtual {v8, v0}, Lkotlin/UByte$Companion;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    :cond_17
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    check-cast p0, Lkotlin/UByte$Companion;

    invoke-virtual {p0, p1}, Lkotlin/UByte$Companion;->supportsFormat(Landroidx/media3/common/Format;)Z

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
    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1
.end method
