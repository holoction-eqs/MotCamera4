.class public final Landroidx/media3/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lookingForVopCodingType:Z

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public startCodeValue:I

.field public vopBytesRead:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final onData(II[B)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_1

    aget-byte p1, p3, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    :cond_2
    :goto_1
    return-void
.end method
