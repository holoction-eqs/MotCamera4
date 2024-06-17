.class public abstract Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/panorama/PanoramaService;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoramaService;-><init>()V

    sput-object v0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    return-void
.end method
