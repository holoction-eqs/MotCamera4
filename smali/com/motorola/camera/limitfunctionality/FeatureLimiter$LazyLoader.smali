.class public abstract Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    invoke-direct {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;-><init>()V

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    return-void
.end method
