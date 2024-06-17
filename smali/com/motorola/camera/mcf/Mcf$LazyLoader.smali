.class public abstract Lcom/motorola/camera/mcf/Mcf$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/mcf/Mcf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$LazyLoader;->INSTANCE:Lcom/motorola/camera/mcf/Mcf;

    return-void
.end method
