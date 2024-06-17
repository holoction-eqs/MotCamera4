.class public abstract Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

.field public static final mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    return-void
.end method

.method public static getMatrixScale(Landroid/graphics/Matrix;)[F
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    new-array p0, v0, [F

    const/4 v0, 0x0

    aget v2, v1, v0

    aput v2, p0, v0

    const/4 v0, 0x4

    aget v0, v1, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0

    :cond_0
    new-array p0, v0, [F

    return-object p0
.end method

.method public static matrixGiven(Landroid/graphics/Matrix;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    if-eqz p0, :cond_0

    iget-object v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v0, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    if-ge v2, v0, :cond_1

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
