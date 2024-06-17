.class public abstract Landroidx/media3/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentGranule:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public formatSet:Z

.field public lengthOfReadPacket:J

.field public final oggPacket:Landroidx/media3/extractor/ogg/OggPacket;

.field public oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

.field public payloadStartPosition:J

.field public sampleRate:I

.field public seekMapSet:Z

.field public setupData:Lcom/motorola/camera/CameraKpi;

.field public state:I

.field public targetGranule:J

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/ogg/OggPacket;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->oggPacket:Landroidx/media3/extractor/ogg/OggPacket;

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->setupData:Lcom/motorola/camera/CameraKpi;

    return-void
.end method


# virtual methods
.method public onSeekEnd(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method public abstract preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
.end method

.method public abstract readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLcom/motorola/camera/CameraKpi;)Z
.end method

.method public reset(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    const/4 v2, 0x5

    invoke-direct {p1, v2}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->setupData:Lcom/motorola/camera/CameraKpi;

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/extractor/ogg/StreamReader;->targetGranule:J

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method
