.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public final mFrame:Landroid/graphics/Rect;

.field public final mFrameRel:Landroid/graphics/RectF;

.field public final mNinePatch:Z

.field public final mSourceSize:Landroid/graphics/Point;

.field public final mSpriteSourceSize:Landroid/graphics/Rect;

.field public final mTrimmed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mTrimmed:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    const-string p3, ".9"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mNinePatch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p4, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p1, p5, Landroid/graphics/Point;->x:I

    add-int/lit8 p1, p1, -0x2

    iget p3, p5, Landroid/graphics/Point;->y:I

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p5, p1, p3}, Landroid/graphics/Point;->set(II)V

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p6, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    div-float/2addr p3, p4

    iget p5, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    iget p6, p6, Landroid/graphics/Point;->y:I

    int-to-float p6, p6

    div-float/2addr p5, p6

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p2, p6

    invoke-direct {p1, p3, p5, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtlasData{mFileName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTrimmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mTrimmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSpriteSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameRel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNinePatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mNinePatch:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
