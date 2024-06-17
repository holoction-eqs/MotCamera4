.class public abstract Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    invoke-direct {v0}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    return-void
.end method
