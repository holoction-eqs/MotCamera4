.class public final Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field public final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final startOffset:J


# direct methods
.method public constructor <init>(JLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    iput-object p3, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public final endTracks()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;)V

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
