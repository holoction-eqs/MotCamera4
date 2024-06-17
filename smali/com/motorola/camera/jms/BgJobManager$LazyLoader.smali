.class public abstract Lcom/motorola/camera/jms/BgJobManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/jms/BgJobManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/jms/BgJobManager;

    invoke-direct {v0}, Lcom/motorola/camera/jms/BgJobManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    return-void
.end method
