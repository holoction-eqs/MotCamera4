.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createLayoutManager(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    if-eqz p3, :cond_1

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/layoutmanager/SmallCliLayoutManager;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/layoutmanager/SmallCliLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;

    invoke-direct {p1}, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;-><init>()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method
