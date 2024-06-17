.class public final Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final synthetic this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iget-wide v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget p0, v0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 13

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iget v0, v0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iget-wide v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v5, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x7530

    sub-long v7, v5, v3

    iget-wide v9, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    const-wide/16 v3, 0x1

    sub-long v11, v1, v3

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
