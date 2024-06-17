.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/work/impl/WorkDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "1",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dependencyDao()Lcom/airbnb/lottie/model/MutablePair;
.end method

.method public abstract preferenceDao()Lcom/motorola/camera/device/CameraService;
.end method

.method public abstract rawWorkInfoDao()Lcom/adobe/xmp/impl/xpath/XMPPath;
.end method

.method public abstract systemIdInfoDao()Landroidx/work/WorkQuery$Builder;
.end method

.method public abstract workNameDao()Lcom/motorola/camera/CameraKpi;
.end method

.method public abstract workProgressDao()Landroidx/work/WorkQuery;
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;
.end method

.method public abstract workTagDao()Landroidx/core/view/MenuHostHelper;
.end method
