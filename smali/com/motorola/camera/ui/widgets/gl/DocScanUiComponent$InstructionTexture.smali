.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mBackColor:I

.field public mFixedBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mWidth:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const p2, 0x7f060043

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mBackColor:I

    return-void
.end method


# virtual methods
.method public final draw([F[F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mWidth:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mHeight:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mWidth:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mHeight:I

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mBackColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->mFixedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
