.class Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;->this$0:Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;->this$0:Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;

    invoke-static {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->access$000(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
