.class public Lcom/motorola/camera/shared/PostProcTransferData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PostProcTransferData"

.field private static final mForegroundProcessingPostProcDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/shared/PostProcTransferData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v0, "postproc-transfer-data"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/shared/PostProcTransferData;->TAG:Ljava/lang/String;

    const-string v2, "error loading postproc-transfer-data.so"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/shared/PostProcTransferData;->mForegroundProcessingPostProcDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/motorola/camera/shared/PostProcTransferData;->native_construct()V

    return-void
.end method

.method private synchronized native native_construct()V
.end method

.method private synchronized native native_destroy()V
.end method

.method public static retrievePostProcTransferDataForForegroundProcessing(J)Lcom/motorola/camera/shared/PostProcTransferData;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/PostProcTransferData;->mForegroundProcessingPostProcDataMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/PostProcTransferData;

    return-object p0
.end method

.method public static savePostProcTransferDataForForegroundProcessing(JLcom/motorola/camera/shared/PostProcTransferData;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/PostProcTransferData;->mForegroundProcessingPostProcDataMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 5

    const-string v0, "super.finalize() thrown : "

    const-string v1, "finalize() thrown : "

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/camera/shared/PostProcTransferData;->native_destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/motorola/camera/shared/PostProcTransferData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :catchall_1
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/motorola/camera/shared/PostProcTransferData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :catchall_3
    move-exception p0

    sget-object v1, Lcom/motorola/camera/shared/PostProcTransferData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method
