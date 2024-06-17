.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# static fields
.field public static final CAMERA_DISABLED_ERROR:Landroidx/work/Configuration$Builder;

.field public static final CAMERA_ERROR_SERVER_DIED:Landroidx/work/Configuration$Builder;

.field public static final CAMERA_ERROR_UNKNOWN:Landroidx/work/Configuration$Builder;

.field public static final CAMERA_OPEN_ERROR:Landroidx/work/Configuration$Builder;

.field public static final VID_REC_START_ERR:Landroidx/work/Configuration$Builder;


# instance fields
.field public mDefaultProcessName:Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "CAMERA_OPEN"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Configuration$Builder;->CAMERA_OPEN_ERROR:Landroidx/work/Configuration$Builder;

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "CAMERA_DISABLED"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Configuration$Builder;->CAMERA_DISABLED_ERROR:Landroidx/work/Configuration$Builder;

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Configuration$Builder;->CAMERA_ERROR_UNKNOWN:Landroidx/work/Configuration$Builder;

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "CAMERA_SERVER_DIED"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Configuration$Builder;->CAMERA_ERROR_SERVER_DIED:Landroidx/work/Configuration$Builder;

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "VID_REC_START_ERR"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/work/Configuration$Builder;->VID_REC_START_ERR:Landroidx/work/Configuration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->-$$Nest$smonImage(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ImageCaptureManager"

    const-string v0, "onImage"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
