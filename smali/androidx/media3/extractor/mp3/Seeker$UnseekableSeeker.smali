.class public final Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;
.super Landroidx/media3/extractor/SeekMap$Unseekable;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getTimeUs(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method
