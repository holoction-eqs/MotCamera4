.class public final Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    iput v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    iput-boolean v0, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    iput p2, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    iput p3, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    return-void
.end method
