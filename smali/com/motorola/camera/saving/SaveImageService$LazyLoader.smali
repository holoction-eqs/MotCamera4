.class public abstract Lcom/motorola/camera/saving/SaveImageService$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/saving/SaveImageService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    return-void
.end method
