.class public abstract Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final buttonNavigation:Landroid/widget/Button;

.field public final smallCliOnboardClose:Landroid/widget/ImageButton;

.field public final viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;-><init>(ILandroid/view/View;)V

    iput-object p2, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->buttonNavigation:Landroid/widget/Button;

    iput-object p3, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->smallCliOnboardClose:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    return-void
.end method
