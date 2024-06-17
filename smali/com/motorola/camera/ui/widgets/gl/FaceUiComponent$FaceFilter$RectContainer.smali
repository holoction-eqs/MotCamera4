.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faceCount:I

.field public index:I

.field public final mFaceRects:[Landroid/graphics/Rect;

.field public mSumBottom:I

.field public mSumLeft:I

.field public mSumRight:I

.field public mSumTop:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/Face;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    return-void
.end method
