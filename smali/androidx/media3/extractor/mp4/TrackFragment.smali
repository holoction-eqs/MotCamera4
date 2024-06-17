.class public final Landroidx/media3/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field public nextFragmentDecodeTime:J

.field public nextFragmentDecodeTimeIncludesMoov:Z

.field public sampleCount:I

.field public final sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public samplePresentationTimesUs:[J

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public trunCount:I

.field public trunDataPosition:[J

.field public trunLength:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
