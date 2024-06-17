.class public abstract synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 2
    const-string v0, "com.google.android.apps.photos"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/content/pm/PackageManager$PackageInfoFlags;
    .locals 2

    .line 5
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m()Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .locals 2

    .line 6
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m()Landroid/os/VibrationAttributes;
    .locals 1

    .line 7
    const/16 v0, 0x22

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m()Landroid/view/DisplayCutout$Builder;
    .locals 1

    .line 8
    new-instance v0, Landroid/view/DisplayCutout$Builder;

    invoke-direct {v0}, Landroid/view/DisplayCutout$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/view/DisplayCutout$Builder;)Landroid/view/DisplayCutout;
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroid/view/DisplayCutout$Builder;->build()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 10
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TEXT_SUGGESTIONS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/window/OnBackInvokedCallback;
    .locals 0

    .line 11
    check-cast p0, Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroidx/activity/ComponentDialog;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    .line 14
    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "EVENT_TRIGGER"

    .line 15
    const-class v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()V
    .locals 1

    .line 19
    new-instance v0, Landroid/view/DisplayCutout$Builder;

    return-void
.end method

.method public static bridge synthetic m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Insets;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$Builder;->setSafeInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Rect;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$Builder;->setBoundingRectTop(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    return-void
.end method

.method public static bridge synthetic m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    .line 23
    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/window/OnBackInvokedDispatcher;Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticLambda5;)V
    .locals 1

    .line 24
    const v0, 0xf4240

    invoke-interface {p0, v0, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/window/OnBackInvokedDispatcher;Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 25
    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic m$1()Landroid/content/pm/PackageManager$PackageInfoFlags;
    .locals 2

    .line 1
    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "TIDBIT"

    .line 2
    const-class v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Rect;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$Builder;->setBoundingRectBottom(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic m$2(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "SETTING"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$3(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "CAPTURE_TRIGGER"

    const-class v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
