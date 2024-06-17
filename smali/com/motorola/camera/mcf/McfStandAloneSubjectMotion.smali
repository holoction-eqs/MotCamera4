.class public abstract Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sFirstPlaneSent:Z

.field public static final sImagesInfo:Ljava/util/ArrayList;

.field public static sStarted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    sput-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    :try_start_0
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v0, "mcf-stand-alone-sm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load libmcf-stand-alone-sm.so : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "McfStandAloneSubjectMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public static analyzeImage(Landroid/media/Image;)F
    .locals 3

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad image format sent to Stand Alone Subject Motion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const-string p0, "bad Image.Planes[] length: "

    :goto_0
    const-string v0, "McfStandAloneSubjectMotion"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-boolean v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    if-nez v1, :cond_2

    sput-boolean v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->initialize(III)V

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzePlane(Ljava/nio/ByteBuffer;)F

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzePlane(Ljava/nio/ByteBuffer;)F

    move-result p0

    return p0
.end method

.method private static native analyzePlane(Ljava/nio/ByteBuffer;)F
.end method

.method private static native deinitialize()V
.end method

.method private static native initialize(III)V
.end method

.method public static declared-synchronized turnOff()V
    .locals 2

    const-class v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    invoke-static {}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->deinitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
