.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;


# virtual methods
.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    aget-object v0, p1, v2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v3

    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v1

    :cond_3
    :goto_1
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v3, v5

    if-ge v4, v3, :cond_3

    move-object v0, v2

    move v4, v3

    goto :goto_1

    :cond_4
    :goto_2
    move-object v0, p0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_6
    sput-object p0, Lkotlin/UInt$Companion;->faceBounds:Landroid/graphics/Rect;

    return-void
.end method
