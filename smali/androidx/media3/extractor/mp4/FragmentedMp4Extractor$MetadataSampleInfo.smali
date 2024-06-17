.class public final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final sampleTimeIsRelative:Z

.field public final sampleTimeUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    iput-boolean p4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    iput p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    return-void
.end method
