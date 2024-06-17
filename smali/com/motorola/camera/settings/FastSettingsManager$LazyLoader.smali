.class public abstract Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/settings/FastSettingsManager;

    invoke-direct {v0}, Lcom/motorola/camera/settings/FastSettingsManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;

    return-void
.end method
