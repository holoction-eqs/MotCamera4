.class public abstract Lcom/motorola/camera/AppFeatures$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/AppFeatures;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/AppFeatures;

    invoke-direct {v0}, Lcom/motorola/camera/AppFeatures;-><init>()V

    sput-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    return-void
.end method
