.class public final Lcom/motorola/camera/saving/XmpData$Panorama;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# instance fields
.field public final mCropAreaHeight:I

.field public final mCropAreaLeft:I

.field public final mCropAreaTop:I

.field public final mCropAreaWidth:I

.field public final mFullHeight:I

.field public final mFullWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d090

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    const v1, 0xb71b0

    iput v1, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaLeft:I

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaTop:I

    const v0, 0x2faf080

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullHeight:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullWidth:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIII)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    iput p2, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    iput p3, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaLeft:I

    iput p4, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaTop:I

    iput p5, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullHeight:I

    iput p6, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/XmpData$Panorama;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    .line 5
    iget v0, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    .line 6
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    .line 7
    iget v0, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaLeft:I

    .line 8
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaLeft:I

    .line 9
    iget v0, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaTop:I

    .line 10
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaTop:I

    .line 11
    iget v0, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullHeight:I

    .line 12
    iput v0, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullHeight:I

    .line 13
    iget p1, p1, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullWidth:I

    .line 14
    iput p1, p0, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullWidth:I

    return-void
.end method
