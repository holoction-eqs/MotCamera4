.class public final Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chunkType:I

.field public listType:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    iput p2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput p3, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void
.end method
