.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final componentSplicePlaybackPositionUs:J

.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    iput-wide p3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    return-void
.end method
