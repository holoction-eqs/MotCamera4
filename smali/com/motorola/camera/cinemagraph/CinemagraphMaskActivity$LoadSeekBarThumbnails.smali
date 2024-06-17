.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    div-int/2addr v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v1, :cond_0

    iget v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v13, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    iget v6, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v5, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v5, v4, v14, v12}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInputImage(ILandroid/graphics/Bitmap;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    iget v8, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    const/4 v10, 0x0

    move-object v4, v14

    move-object v9, v11

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
