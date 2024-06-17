.class public final Lcom/motorola/camera/settings/FastSettingsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public static final SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;


# instance fields
.field public final mSettingsMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "com.motorola.camera.surface_size"

    const-class v2, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsManager$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "com.motorola.camera.mode.menu.show"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsManager$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SURFACE_SIZE:Landroid/graphics/Point;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/settings/FastSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    return-void
.end method

.method public static get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;

    iget-object v0, v0, Lcom/motorola/camera/settings/FastSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    return-object p0
.end method

.method public static set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/Setting;->setValuePriv(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setting found matching:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
