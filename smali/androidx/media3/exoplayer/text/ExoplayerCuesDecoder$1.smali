.class public final Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/extractor/text/SubtitleDecoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleDecoder;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->this$0:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->this$0:Landroidx/media3/extractor/text/SubtitleDecoder;

    check-cast v0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;

    iget-object v0, v0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput v3, p0, Landroidx/media3/decoder/Buffer;->flags:I

    iput-object v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->this$0:Landroidx/media3/extractor/text/SubtitleDecoder;

    check-cast v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    iget-object v4, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput v3, p0, Landroidx/media3/decoder/Buffer;->flags:I

    iput-object v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    iget v1, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v5, v1, 0x1

    iput v5, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    iget-object v5, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBuffers:[Landroidx/media3/decoder/DecoderOutputBuffer;

    aput-object p0, v5, v1

    iget-object p0, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    if-lez p0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_2

    iget-object p0, v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
