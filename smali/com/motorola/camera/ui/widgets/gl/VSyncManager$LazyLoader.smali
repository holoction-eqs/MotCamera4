.class public abstract Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    return-void
.end method
