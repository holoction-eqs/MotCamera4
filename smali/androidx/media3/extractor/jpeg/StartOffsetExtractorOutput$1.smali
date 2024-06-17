.class public final Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final synthetic this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

.field public final synthetic val$seekMap:Landroidx/media3/extractor/SeekMap;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v2, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, v1, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v6, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    iget-object p1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, p1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v3, p1, Landroidx/media3/extractor/SeekPoint;->position:J

    add-long/2addr v3, v6

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p2, v0, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p2
.end method

.method public final isSeekable()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result p0

    return p0
.end method
