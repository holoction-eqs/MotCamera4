.class public final Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ancillaryCluts:Landroid/util/SparseArray;

.field public final ancillaryObjects:Landroid/util/SparseArray;

.field public final ancillaryPageId:I

.field public final cluts:Landroid/util/SparseArray;

.field public displayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

.field public final objects:Landroid/util/SparseArray;

.field public pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

.field public final regions:Landroid/util/SparseArray;

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    iput p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    return-void
.end method
