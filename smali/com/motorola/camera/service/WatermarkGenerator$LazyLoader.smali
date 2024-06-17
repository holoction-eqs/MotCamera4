.class public abstract Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/WatermarkGenerator;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkGenerator;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    return-void
.end method
