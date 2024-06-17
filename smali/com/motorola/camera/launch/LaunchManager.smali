.class public final Lcom/motorola/camera/launch/LaunchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

.field public static final MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;


# instance fields
.field public callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

.field public final flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

.field public lidValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v6, v9, v8, v10}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;-><init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    return-void
.end method

.method public static launch(Landroid/app/Activity;ZIIZ)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p3, v2, :cond_0

    const-string v3, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    goto :goto_0

    :cond_0
    const-string v3, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    const-string v3, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW"

    goto :goto_0

    :cond_2
    const-string v3, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v3, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v3, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-string p1, "com.android.systemui.camera_launch_source"

    const-string v3, "flip_changed"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 p1, 0x0

    if-nez p3, :cond_5

    sget p3, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    const-class p4, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-virtual {v1, p0, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    const-class p3, Lcom/motorola/camera/SecureCamera;

    goto :goto_1

    :cond_6
    const-class p3, Lcom/motorola/camera/Camera;

    :goto_1
    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move p3, p1

    :goto_2
    sget p4, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne p3, p4, :cond_7

    goto :goto_3

    :cond_7
    move v2, p1

    :goto_3
    if-eqz v2, :cond_a

    sget-object p4, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_8
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_4

    :cond_9
    move p2, p1

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_b
    :goto_4
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
