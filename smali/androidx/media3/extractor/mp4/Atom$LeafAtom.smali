.class public final Landroidx/media3/extractor/mp4/Atom$LeafAtom;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final data:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
