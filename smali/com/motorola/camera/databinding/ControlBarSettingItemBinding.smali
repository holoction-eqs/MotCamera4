.class public abstract Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controlBarItemBtn:Landroid/widget/ImageButton;

.field public mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

.field public mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageButton;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;-><init>(ILandroid/view/View;)V

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    return-void
.end method
