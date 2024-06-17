.class public final Lcom/google/android/material/color/utilities/QuantizerMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public colorToCount:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addFace(Landroid/hardware/camera2/params/Face;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;-><init>(Landroid/hardware/camera2/params/Face;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    aget-object v0, v1, v0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    :goto_1
    return-void
.end method

.method public final getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    div-int/2addr p1, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    div-int/2addr v1, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    div-int/2addr v2, v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    div-int/2addr p0, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
