.class public final Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final framesSize:I

.field public final isUnsynchronized:Z

.field public final majorVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    iput p2, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    return-void
.end method
