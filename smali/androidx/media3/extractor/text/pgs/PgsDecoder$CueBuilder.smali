.class public final Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitmapData:Landroidx/media3/common/util/ParsableByteArray;

.field public bitmapHeight:I

.field public bitmapWidth:I

.field public bitmapX:I

.field public bitmapY:I

.field public final colors:[I

.field public colorsSet:Z

.field public planeHeight:I

.field public planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    return-void
.end method
