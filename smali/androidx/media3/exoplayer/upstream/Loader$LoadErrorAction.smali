.class public final Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public retryDelayMillis:J

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-object p1
.end method
