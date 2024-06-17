.class public final Landroidx/media3/extractor/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blockFlag:Z

.field public mapping:I

.field public transformType:I

.field public windowType:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Landroidx/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    iput p1, p0, Landroidx/media3/extractor/VorbisUtil$Mode;->windowType:I

    iput p2, p0, Landroidx/media3/extractor/VorbisUtil$Mode;->transformType:I

    iput p3, p0, Landroidx/media3/extractor/VorbisUtil$Mode;->mapping:I

    return-void
.end method
