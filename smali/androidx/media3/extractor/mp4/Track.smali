.class public final Landroidx/media3/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Landroidx/media3/common/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp4/Track;->id:I

    iput p2, p0, Landroidx/media3/extractor/mp4/Track;->type:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    iput-wide p7, p0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    iput-object p9, p0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iput p10, p0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    iput-object p11, p0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput p12, p0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iput-object p13, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    iput-object p14, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    return-void
.end method
