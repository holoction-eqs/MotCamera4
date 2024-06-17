.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# instance fields
.field public final fragmentList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
