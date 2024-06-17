.class public final Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clutId:I

.field public final depth:I

.field public final fillFlag:Z

.field public final height:I

.field public final id:I

.field public final pixelCode2Bit:I

.field public final pixelCode4Bit:I

.field public final pixelCode8Bit:I

.field public final regionObjects:Landroid/util/SparseArray;

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIIIIILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    iput-boolean p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    iput p3, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iput p4, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    iput p5, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    iput p6, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    iput p7, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    iput p8, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    iput p9, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    iput-object p10, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    return-void
.end method
