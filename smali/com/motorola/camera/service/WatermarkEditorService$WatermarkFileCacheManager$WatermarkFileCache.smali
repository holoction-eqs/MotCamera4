.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
