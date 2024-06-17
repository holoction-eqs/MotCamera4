.class public abstract Lcom/motorola/camera/settings/SettingsManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/settings/SettingsManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager;

    invoke-direct {v0}, Lcom/motorola/camera/settings/SettingsManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    return-void
.end method
